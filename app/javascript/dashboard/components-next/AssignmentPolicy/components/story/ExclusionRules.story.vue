<script setup>
import ExclusionRules from '../ExclusionRules.vue';
import { ref } from 'vue';

const mockTagsList = [
  {
    id: 1,
    name: 'urgent',
    color: '#F65652',
  },
  {
    id: 2,
    name: 'bug',
    color: '#FF6C65',
  },
  {
    id: 3,
    name: 'feature-request',
    color: '#0058AB',
  },
  {
    id: 4,
    name: 'documentation',
    color: '#67D691',
  },
  {
    id: 5,
    name: 'enhancement',
    color: '#65CE85',
  },
  {
    id: 6,
    name: 'question',
    color: '#B8C800',
  },
  {
    id: 7,
    name: 'duplicate',
    color: '#7C7C7E',
  },
  {
    id: 8,
    name: 'wontfix',
    color: '#5F5F61',
  },
];

const excludedLabelsBasic = ref([]);
const excludeOlderThanHoursBasic = ref(10);
</script>

<template>
  <Story
    title="Components/AgentManagementPolicy/ExclusionRules"
    :layout="{ type: 'grid', width: '1200px' }"
  >
    <Variant title="Basic Usage">
      <div class="p-8 bg-n-background h-[600px]">
        <ExclusionRules
          v-model:excluded-labels="excludedLabelsBasic"
          v-model:exclude-older-than-minutes="excludeOlderThanHoursBasic"
          :tags-list="mockTagsList"
        />
      </div>
    </Variant>
  </Story>
</template>

/* innagent: hexes derivados */
