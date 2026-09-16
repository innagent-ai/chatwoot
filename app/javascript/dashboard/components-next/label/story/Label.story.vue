<script setup>
import Label from '../LabelItem.vue';
import { label } from './fixtures';
</script>

<template>
  <Story title="Components/Label/Label item">
    <Variant title="Default">
      <Label :label="label" />
    </Variant>

    <Variant title="Custom Label">
      <Label
        :label="{
          title: 'Custom Label',
          color: '#95A300',
        }"
      />
    </Variant>
  </Story>
</template>

/* innagent: hexes derivados */
