<script setup>
/**
 * A porta da familia Inn. GERADA por scripts/innagent-stack/aplicar-tema-chatwoot.py
 * — editar aqui a mao nao sobrevive a proxima subida de versao do motor.
 */
import { computed } from 'vue';
import { useI18n } from 'vue-i18n';

const COPY = {
  "en": {
    "frase": "Every guest conversation, in one place.",
    "provas": [
      "WhatsApp, Instagram, e-mail and the website in one inbox.",
      "The agent answers first; your team takes over at any moment.",
      "History, labels and notes follow the guest, not the channel."
    ]
  },
  "pt_BR": {
    "frase": "Toda conversa com o hóspede, num lugar só.",
    "provas": [
      "WhatsApp, Instagram, e-mail e o site numa caixa só.",
      "O agente responde primeiro; a equipe assume quando quiser.",
      "Histórico, etiquetas e notas seguem o hóspede, não o canal."
    ]
  },
  "fr": {
    "frase": "Toutes les conversations clients, au même endroit.",
    "provas": [
      "WhatsApp, Instagram, e-mail et le site dans une seule boîte.",
      "L'agent répond en premier ; votre équipe reprend quand elle veut.",
      "Historique, étiquettes et notes suivent le client, pas le canal."
    ]
  },
  "pt": {
    "frase": "Toda conversa com o hóspede, num lugar só.",
    "provas": [
      "WhatsApp, Instagram, e-mail e o site numa caixa só.",
      "O agente responde primeiro; a equipe assume quando quiser.",
      "Histórico, etiquetas e notas seguem o hóspede, não o canal."
    ]
  }
};

const { locale } = useI18n();

const copy = computed(() => {
  const l = String(locale.value || 'en');
  return COPY[l] || COPY[l.split(/[-_]/)[0]] || COPY.en;
});
</script>

<template>
  <main class="porta">
    <section class="porta__campo">
      <div class="porta__conteudo">
        <svg class="porta__lockup" role="img" aria-label="InnChat" viewBox="0 0 632 120" fill="none" xmlns="http://www.w3.org/2000/svg">
        <path d="M46.8653 73.104L59.9873 108.547L35.1233 119.991L25.6268 94.3697L0.00524902 84.8461L11.4227 59.9821L46.8653 73.104Z" fill="#BFE2FB"/>
        <path d="M46.8653 46.8602L11.4227 59.9821L0.00524902 35.1181L25.6268 25.6216L35.1233 0L59.9873 11.4174L46.8653 46.8602Z" fill="#BFE2FB"/>
        <path d="M108.66 59.9821L120.105 84.8461L94.3747 94.3697L84.8784 119.991L59.9872 108.547L73.1363 73.104L108.66 59.9821Z" fill="#BFE2FB"/>
        <path d="M73.1363 46.8602L59.9872 11.4174L84.8784 0L94.3747 25.6216L120.105 35.1181L108.66 59.9821L73.1363 46.8602Z" fill="#BFE2FB"/>
        <path d="M181.609 98.8866V21.1134H200.934V98.8866H181.609Z" fill="#FFFFFF"/>
        <path d="M216.458 98.8866V36.668H231.777L232.012 54.9329H234.369C235.39 50.5336 236.844 46.8414 238.729 43.8562C240.614 40.8709 243.01 38.6713 245.917 37.2572C248.824 35.7646 252.241 35.0183 256.169 35.0183C263.475 35.0183 269.013 37.5714 272.784 42.6778C276.634 47.7841 278.558 55.9149 278.558 67.0703V98.8866H259.469V69.1914C259.469 62.7495 258.526 58.0753 256.64 55.1686C254.834 52.1834 252.123 50.6908 248.51 50.6908C245.524 50.6908 243.05 51.5942 241.086 53.401C239.2 55.2079 237.786 57.6039 236.844 60.5892C235.901 63.5744 235.43 66.9132 235.43 70.6054V98.8866H216.458Z" fill="#FFFFFF"/>
        <path d="M292.178 98.8866V36.668H307.497L307.732 54.9329H310.089C311.11 50.5336 312.564 46.8414 314.449 43.8562C316.335 40.8709 318.731 38.6713 321.637 37.2572C324.544 35.7646 327.961 35.0183 331.889 35.0183C339.195 35.0183 344.734 37.5714 348.504 42.6778C352.354 47.7841 354.279 55.9149 354.279 67.0703V98.8866H335.189V69.1914C335.189 62.7495 334.246 58.0753 332.361 55.1686C330.554 52.1834 327.844 50.6908 324.23 50.6908C321.245 50.6908 318.77 51.5942 316.806 53.401C314.921 55.2079 313.507 57.6039 312.564 60.5892C311.621 63.5744 311.15 66.9132 311.15 70.6054V98.8866H292.178Z" fill="#FFFFFF"/>
        <path d="M405.253 100.536C399.125 100.536 393.626 99.7115 388.755 98.0617C383.885 96.412 379.721 93.8981 376.265 90.5201C372.887 87.142 370.294 83.0177 368.487 78.1471C366.759 73.1979 365.895 67.4238 365.895 60.8249C365.895 54.0688 366.798 48.1376 368.605 43.0313C370.412 37.925 373.004 33.6042 376.382 30.0691C379.839 26.5339 383.885 23.9022 388.52 22.1739C393.155 20.3671 398.3 19.4636 403.957 19.4636C408.434 19.4636 412.519 20.0136 416.212 21.1134C419.983 22.2132 423.243 23.8629 425.992 26.0626C428.742 28.1837 430.863 30.7761 432.356 33.8399C433.927 36.8251 434.752 40.2424 434.83 44.0918L417.272 48.9232C417.272 45.7023 416.565 43.0706 415.151 41.028C413.816 38.9855 412.087 37.4536 409.966 36.4323C407.924 35.3325 405.685 34.7826 403.249 34.7826C401.286 34.7826 399.243 35.2147 397.122 36.0788C395.079 36.8644 393.194 38.2392 391.466 40.2032C389.737 42.0886 388.363 44.6025 387.341 47.7448C386.32 50.8872 385.809 54.8151 385.809 59.5286C385.809 65.6562 386.674 70.6054 388.402 74.3762C390.13 78.1471 392.526 80.9359 395.59 82.7428C398.654 84.4711 402.032 85.3352 405.724 85.3352C409.809 85.3352 412.952 84.4711 415.151 82.7428C417.429 80.9359 419.04 78.697 419.983 76.026C420.925 73.355 421.436 70.6447 421.514 67.8951L438.012 70.4876C437.933 74.7298 437.305 78.697 436.126 82.3892C434.948 86.0815 433.063 89.3024 430.47 92.052C427.956 94.723 424.617 96.8048 420.454 98.2974C416.29 99.79 411.223 100.536 405.253 100.536Z" fill="#FFFFFF"/>
        <path d="M448.567 98.8866V14.0431H467.539V33.4864C467.539 35.0576 467.46 36.7073 467.303 38.4356C467.224 40.0853 467.028 41.8136 466.714 43.6205C466.478 45.3488 466.203 47.1163 465.889 48.9232C465.653 50.73 465.339 52.4976 464.946 54.2259H467.774C468.874 50.3765 470.249 47.0378 471.899 44.2097C473.548 41.303 475.709 39.0641 478.38 37.4929C481.051 35.8432 484.468 35.0183 488.632 35.0183C496.016 35.0183 501.515 37.6107 505.129 42.7956C508.821 47.9019 510.667 55.7971 510.667 66.4811V98.8866H491.578V69.6627C491.578 63.2995 490.635 58.5466 488.749 55.4043C486.943 52.1834 484.154 50.5729 480.383 50.5729C477.476 50.5729 475.08 51.4764 473.195 53.2832C471.309 55.0901 469.895 57.5254 468.953 60.5892C468.01 63.5744 467.539 66.9132 467.539 70.6054V98.8866H448.567Z" fill="#FFFFFF"/>
        <path d="M538.899 100.536C535.442 100.536 532.378 99.8686 529.707 98.5331C527.036 97.119 524.955 95.1158 523.462 92.5233C521.969 89.8523 521.223 86.6314 521.223 82.8606C521.223 79.3254 521.891 76.4188 523.226 74.1406C524.64 71.7838 526.644 69.9377 529.236 68.6022C531.907 67.1881 535.089 66.049 538.781 65.1849C542.473 64.2422 546.676 63.4173 551.39 62.7103C553.668 62.3175 555.553 61.964 557.046 61.6497C558.617 61.2569 559.795 60.6677 560.581 59.8821C561.367 59.0966 561.759 57.9575 561.759 56.4648C561.759 54.5009 561.052 52.8119 559.638 51.3978C558.224 49.9837 555.946 49.2767 552.804 49.2767C550.604 49.2767 548.601 49.6695 546.794 50.4551C545.066 51.2407 543.573 52.3798 542.316 53.8724C541.059 55.365 540.116 57.1719 539.488 59.293L522.755 54.3438C523.776 51.0443 525.19 48.1769 526.997 45.7416C528.882 43.3062 531.121 41.303 533.714 39.7318C536.306 38.0821 539.252 36.9037 542.552 36.1967C545.93 35.4111 549.504 35.0183 553.275 35.0183C559.56 35.0183 564.666 36.0395 568.594 38.0821C572.6 40.0461 575.546 43.1491 577.432 47.3913C579.396 51.5549 580.378 56.9362 580.378 63.5351V73.08C580.378 75.9081 580.417 78.7755 580.496 81.6822C580.653 84.5103 580.81 87.3777 580.967 90.2844C581.203 93.1125 581.478 95.9799 581.792 98.8866H565.059C564.745 97.0797 564.43 94.9194 564.116 92.4055C563.802 89.813 563.566 87.1813 563.409 84.5103H561.17C560.07 87.4956 558.46 90.2451 556.339 92.759C554.296 95.1943 551.782 97.119 548.797 98.5331C545.89 99.8686 542.591 100.536 538.899 100.536ZM547.501 87.1028C548.915 87.1028 550.329 86.8671 551.743 86.3957C553.236 85.8458 554.65 85.1388 555.985 84.2747C557.321 83.3319 558.538 82.1928 559.638 80.8573C560.738 79.5218 561.563 78.0685 562.113 76.4973L561.877 67.1881L564.47 67.7773C562.977 68.72 561.327 69.4663 559.52 70.0162C557.714 70.5661 555.867 70.9982 553.982 71.3125C552.175 71.6267 550.368 71.9802 548.561 72.373C546.833 72.6872 545.262 73.1193 543.848 73.6692C542.512 74.2191 541.452 74.9654 540.666 75.9081C539.881 76.8508 539.488 78.1471 539.488 79.7968C539.488 81.9964 540.234 83.764 541.727 85.0995C543.219 86.435 545.144 87.1028 547.501 87.1028Z" fill="#FFFFFF"/>
        <path d="M618.643 100.418C611.337 100.418 605.956 98.4938 602.499 94.6444C599.043 90.7165 597.314 84.471 597.314 75.9081V51.5156H588.476L588.83 36.7859H595.193C597.707 36.7073 599.592 36.3145 600.849 35.6075C602.185 34.9005 603.01 33.565 603.324 31.601L604.856 22.881H615.579V36.668H630.545V52.1048H615.579V75.0833C615.579 77.7543 616.208 79.7182 617.465 80.9752C618.8 82.2321 620.803 82.8606 623.474 82.8606C624.967 82.8606 626.381 82.7035 627.716 82.3892C629.052 82.075 630.152 81.6429 631.016 81.093V98.6509C628.502 99.4365 626.185 99.9079 624.064 100.065C622.021 100.301 620.214 100.418 618.643 100.418Z" fill="#FFFFFF"/>
        </svg>
        <h1 class="porta__frase">{{ copy.frase }}</h1>
        <ul class="porta__provas">
          <li v-for="prova in copy.provas" :key="prova">
            <span class="porta__filete" aria-hidden="true" />
            <span>{{ prova }}</span>
          </li>
        </ul>
      </div>
    </section>

    <section class="porta__form">
      <div class="porta__caixa">
        <slot />
      </div>
    </section>
  </main>
</template>

<style>
.porta {
  display: flex;
  flex-direction: column;
  min-height: 100vh;
  min-height: 100dvh;
  background: #FFFFFF;
  font-family: 'Lato', system-ui, sans-serif;
}

/* O CAMPO. Nao e um detalhe colorido: e superficie, e o que responde ao
   "formulario boiando num canvas vazio". */
.porta__campo {
  display: flex;
  align-items: center;
  padding: 1.5rem 3rem;
  background: #171A1F;
  color: #FFFFFF;
}

.porta__conteudo {
  display: flex;
  flex-direction: column;
  gap: 2rem;
  width: 100%;
  max-width: 33.375rem;
  margin: 0 auto;
  padding: 2.5rem 0;
}

/* Um lockup, no topo do campo — nunca dois, nunca no meio do formulario.
   align-self e obrigatorio: num flex column o `stretch` padrao estica o <svg>
   ate a largura da coluna, e o preserveAspectRatio CENTRALIZA o desenho dentro
   da caixa esticada — a marca sai no meio da coluna em vez de a esquerda. E o
   mesmo `w-fit` que a porta de referencia poe em volta da <Marca />. */
.porta__lockup { display: block; align-self: flex-start; height: 2.25rem; width: auto; }

.porta__frase {
  margin: 0;
  font-family: 'Bricolage Grotesque', system-ui, sans-serif;
  font-weight: 700;
  font-size: 1.75rem;
  line-height: 1.15;
  text-wrap: balance;
}

.porta__provas { display: flex; flex-direction: column; gap: 1rem; margin: 0; padding: 0; list-style: none; }

.porta__provas li {
  display: flex;
  align-items: flex-start;
  gap: 1rem;
  font-size: 0.9375rem;
  /* 24px EXATOS, nao 1.5: 1.5 x 15px da 22,5px e cada motor arredonda para o
     seu lado (aqui saia 23). A linha da prova e o que alinha a familia. */
  line-height: 24px;
  color: #CCCFD1;
}

/* O filete de lima e a marcacao da lista. Nunca bolinha, nunca icone. */
.porta__filete {
  flex: 0 0 auto;
  width: 16px;
  height: 3px;
  margin-top: 0.6em;
  border-radius: 999px;
  background: #DAF06B;
}

/* Sem cartao aqui dentro: o branco JA e o cartao. Borda em volta do
   formulario cria moldura dentro de moldura. */
.porta__form {
  flex: 1 1 auto;
  display: flex;
  align-items: center;
  justify-content: center;
  padding: 3rem 1.5rem;
  background: #FFFFFF;
}

.porta__caixa { width: 100%; max-width: 28rem; }

.porta__titulo {
  margin: 0 0 1.5rem;
  font-family: 'Bricolage Grotesque', system-ui, sans-serif;
  font-weight: 700;
  font-size: 1.5rem;
  line-height: 1.2;
  color: #292B2F;
}

.porta__sub { margin: -1rem 0 1.5rem; font-size: 0.9375rem; line-height: 1.5; color: #6E6E6E; }
.porta__rodape { margin-top: 1.5rem; font-size: 0.875rem; color: #6E6E6E; }
.porta__rodape a { color: #258BFB; }

/* A REGRA: acao e neutra. Primario em tinta escura, raio 48. O azul do motor
   (bg-n-brand) so volta por cima com !important porque a classe utilitaria
   nasce depois no bundle. */
.porta__acao {
  height: 44px !important;
  border-radius: 48px !important;
  background-color: #383B3F !important;
  color: #FFFFFF !important;
  font-family: 'Lato', system-ui, sans-serif !important;
  font-size: 15px !important;
  font-weight: 700 !important;
}

/* A REGUA DOS CONTROLES — spec, secao "Controles" (44/8/1px, rotulo 12/700
   caixa alta, botao 44/15/700). Quem PINTA o campo aqui e o PROPRIO <input>:
   os wrappers do FormInput (div.space-y-1 > div.w-full > div.relative) nao tem
   borda nem raio, e o input desenha a linha com `outline outline-1` sobre
   `border-none` — por isso media 48px de altura (py-3 + leading-6) e borda 0.
   A linha vira BORDA de verdade e o outline fica so para o foco.
   Especificidade (0,2,1) basta contra as utilitarias (0,1,0); o _base.scss
   global, que tem 0,13,1, nao entra no bundle do v3 (App.vue so importa
   next-colors), senao ele e que mandaria na altura. */
.porta input:not([type='hidden']) {
  box-sizing: border-box;
  height: 44px;
  padding: 0 14px;
  border: 1px solid #E7E7E7;
  border-radius: 8px;
  outline: none;
  background-color: #FFFFFF;
  font-family: 'Lato', system-ui, sans-serif;
  font-size: 15px;
  line-height: 1.2;
  color: #292B2F;
}

/* o botao de ver-a-senha fica ABSOLUTO sobre a direita do campo */
.porta__caixa .relative:has(button) input { padding-right: 2.5rem; }

/* o motor sinalizava erro pelo outline; sem ele, o vermelho tem de vir na
   borda, senao o campo errado fica identico ao certo */
.porta input.error { border-color: rgb(var(--ruby-9)); }

/* Rotulo -> campo: 6px. O espaco NAO vem de margem no campo — vem do
   `space-y-1` (4px) do WithLabel, o <div> que embrulha rotulo + campo. Mexer
   na margem do input SOMARIA aos 4px em vez de troca-los.
   `!important` porque a utilitaria e `.space-y-1 > :not([hidden]) ~
   :not([hidden])`, especificidade (0,3,0) — mais alta que qualquer selector
   nosso de classe + elemento. Mesmo motivo do .porta__acao acima.
   Os outros dois espacos da regua ja vem prontos do `space-y-5` do <form>:
   campo -> rotulo seguinte e ultimo campo -> botao, 20px cada. */
.porta__caixa .space-y-1 > label + div { margin-top: 6px !important; }

/* Rotulo: 12/700, CAIXA ALTA, .18em. O motor entrega 14px peso 500. */
.porta__caixa label {
  font-family: 'Lato', system-ui, sans-serif;
  font-size: 12px;
  font-weight: 700;
  line-height: 1.4;
  letter-spacing: 0.18em;
  /* 18px exatos: sem isto o rotulo herda o line-height do motor (12px no Kaneo,
     16.8 no Chatwoot) e o bloco de campo fica com altura diferente em cada porta. */
  line-height: 18px;
  text-transform: uppercase;
  color: #6E6E6E;
}

/* o "esqueci a senha" mora DENTRO do <label> (slot rightOfLabel): e link, nao rotulo */
.porta__caixa label a {
  font-size: 0.8125rem;
  font-weight: 400;
  letter-spacing: normal;
  text-transform: none;
}

/* Todo elemento focavel declara o proprio foco — se nao declarar, o navegador
   desenha o dele e o azul do Chrome vira parte do layout. */
.porta :focus-visible { outline: 2px solid #258BFB !important; outline-offset: 2px; }

@media (min-width: 1024px) {
  .porta { flex-direction: row; }
  .porta__campo { flex: 0 0 46%; width: 46%; padding: 0 4rem; }
  .porta__conteudo { padding: 0; }
  .porta__frase { font-size: 2.75rem; line-height: 1.1; }
  .porta__form { padding: 0 4rem; }
}
</style>
