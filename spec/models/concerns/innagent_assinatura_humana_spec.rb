require 'rails_helper'

RSpec.describe InnagentAssinaturaHumana do
  let(:account) { create(:account) }
  let(:agente) { create(:user, account: account, name: 'Leonardo Drumond', display_name: 'Leo') }
  let(:whatsapp) { create(:channel_whatsapp, account: account, sync_templates: false, validate_provider_config: false).inbox }
  let(:conversa) { create(:conversation, account: account, inbox: whatsapp) }

  def mensagem(**attrs)
    build(:message, account: account, inbox: conversa.inbox, conversation: conversa,
                    message_type: :outgoing, sender: agente, content: 'Kelly, o almoco seria para qual dia?', **attrs)
  end

  it 'assina a resposta do atendente em cima, em negrito no WhatsApp' do
    m = mensagem.tap(&:valid?)
    expect(m.content).to eq("**Leo:**\nKelly, o almoco seria para qual dia?")
  end

  it 'nao assina de novo o que ja vem assinado' do
    m = mensagem(content: "**Leo:**\noi").tap(&:valid?)
    expect(m.content).to eq("**Leo:**\noi")
  end

  it 'nao assina nota privada, template nem mensagem de contato' do
    expect(mensagem(private: true).tap(&:valid?).content).not_to include('Leo:')
    expect(mensagem(additional_attributes: { template_params: { name: 't' } }).tap(&:valid?).content).not_to include('Leo:')
    expect(mensagem(message_type: :incoming, sender: create(:contact, account: account)).tap(&:valid?).content).not_to include('Leo:')
  end

  it 'nao assina no canal Api, que ja assina por fora' do
    api = create(:inbox, account: account, channel: create(:channel_api, account: account))
    conv = create(:conversation, account: account, inbox: api)
    m = build(:message, account: account, inbox: api, conversation: conv, message_type: :outgoing, sender: agente, content: 'oi')
    expect(m.tap(&:valid?).content).to eq('oi')
  end
end
