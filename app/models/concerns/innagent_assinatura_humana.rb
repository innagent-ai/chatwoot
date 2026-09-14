# InnChat: a resposta de um atendente sai assinada com o nome dele, em cima.
#
# A Sophia ja assina as proprias mensagens (`**Sophia:**` + quebra de linha) antes de
# grava-las. Os humanos saiam sem nome nenhum: o hospede lia "Kelly, o almoco seria
# para qual dia?" sem saber que agora era o Leonardo (conv 3336, 14/09/2026).
#
# A assinatura nativa do Chatwoot nao resolve: e do navegador (toggle por canal em cada
# perfil), vai no fim da mensagem e estava desligada para quase todos. Aqui ela e do
# motor, antes do envio, para todo atendente.
#
# Formato espelha a Sophia: WhatsApp recebe `**Nome:**` (o renderizador do Chatwoot
# converte para o `*Nome:*` negrito do WhatsApp); os demais canais recebem `Nome:` puro,
# porque Instagram mostraria os asteriscos. Fora: Api (o 5150 sai pela Evolution, que ja
# assina) e E-mail (tem assinatura propria).
module InnagentAssinaturaHumana
  extend ActiveSupport::Concern

  CANAIS_SEM_ASSINATURA = %w[Channel::Api Channel::Email].freeze

  included do
    before_validation :innagent_assinar_resposta_humana, on: :create
  end

  private

  def innagent_assinar_resposta_humana
    return unless innagent_assinavel?

    nome = sender.display_name.to_s.strip.presence || sender.name.to_s.strip
    return if nome.blank?
    # Ja assinada com este nome (a Sophia assina sozinha): nao assina de novo.
    return if content.match?(/\A\s*\**#{Regexp.escape(nome)}:/)

    prefixo = inbox.whatsapp? ? "**#{nome}:**" : "#{nome}:"
    self.content = "#{prefixo}\n#{content}"
  end

  def innagent_assinavel?
    outgoing? && !private? && text? && content.present? &&
      sender.is_a?(User) &&
      additional_attributes&.dig('template_params').blank? &&
      CANAIS_SEM_ASSINATURA.exclude?(inbox&.channel_type)
  end
end
