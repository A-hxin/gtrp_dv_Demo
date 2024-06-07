<template>
  <div class="tx9" >
    <dv-active-ring-chart :config="conf" style="height: 20vh;"/>
  </div>
</template>

<script setup>
import { reactive } from 'vue';

const conf = reactive({
  lineWidth: 15,
  digitalFlopStyle: {
    fill: 'pink',
  },
  data: [
    {
      name: '线上',
      value: 612345,
    },
    {
      name: '线下',
      value: 387654,
    },
    {
      name: '第三方平台',
      value: 256789,
    },
  ],
});
</script>

<style scoped>
@import "@/assets/setBox.css";
</style>
