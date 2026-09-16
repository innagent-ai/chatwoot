<script setup>
import { computed } from 'vue';
import { useI18n } from 'vue-i18n';
import { getFileInfo } from '@chatwoot/utils';

import FileIcon from 'next/icon/FileIcon.vue';
import Icon from 'next/icon/Icon.vue';

const { attachment } = defineProps({
  attachment: {
    type: Object,
    required: true,
  },
});

const { t } = useI18n();

const fileDetails = computed(() => {
  return getFileInfo(attachment?.dataUrl || '');
});

const displayFileName = computed(() => {
  const { base, type } = fileDetails.value;
  const truncatedName = (str, maxLength, hasExt) =>
    str.length > maxLength
      ? `${str.substring(0, maxLength).trimEnd()}${hasExt ? '..' : '...'}`
      : str;

  return type
    ? `${truncatedName(base, 12, true)}.${type}`
    : truncatedName(base, 14, false);
});

const textColorClass = computed(() => {
  const colorMap = {
    '7z': 'dark:text-[#EDEEF0] text-[#003063]',
    csv: 'text-n-amber-12',
    doc: 'dark:text-[#CEE4FF] text-[#003063]', // indigo-12
    docx: 'dark:text-[#CEE4FF] text-[#003063]', // indigo-12
    json: 'text-n-slate-12',
    odt: 'dark:text-[#CEE4FF] text-[#003063]', // indigo-12
    pdf: 'text-n-slate-12',
    ppt: 'dark:text-[#E2F451] text-[#393F00]',
    pptx: 'dark:text-[#E2F451] text-[#393F00]',
    rar: 'dark:text-[#EDEEF0] text-[#003063]',
    rtf: 'dark:text-[#CEE4FF] text-[#003063]', // indigo-12
    tar: 'dark:text-[#EDEEF0] text-[#003063]',
    txt: 'text-n-slate-12',
    xls: 'text-n-teal-12',
    xlsx: 'text-n-teal-12',
    zip: 'dark:text-[#EDEEF0] text-[#003063]',
  };

  return colorMap[fileDetails.value.type] || 'text-n-slate-12';
});
</script>

<template>
  <div
    class="h-9 bg-n-alpha-white gap-2 overflow-hidden items-center flex px-2 rounded-lg border border-n-container"
  >
    <FileIcon class="flex-shrink-0" :file-type="fileDetails.type" />
    <span
      class="flex-1 min-w-0 text-sm max-w-36"
      :title="fileDetails.name"
      :class="textColorClass"
    >
      {{ displayFileName }}
    </span>
    <a
      v-tooltip="t('CONVERSATION.DOWNLOAD')"
      class="flex-shrink-0 size-9 grid place-content-center cursor-pointer text-n-slate-11 hover:text-n-slate-12 transition-colors"
      :href="attachment.dataUrl"
      rel="noreferrer noopener nofollow"
      target="_blank"
    >
      <Icon icon="i-lucide-download" />
    </a>
  </div>
</template>

/* innagent: hexes derivados */
