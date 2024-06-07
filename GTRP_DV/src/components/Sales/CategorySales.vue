<template>
  <div class="tx10">
    <div>
      <dv-capsule-chart :config="config" class="tx8" />
    </div>
  </div>
</template>

<script setup lang="ts">
import { reactive } from 'vue';
import axios from 'axios';

const config = reactive({
  data: [],
  colors: ['#8bc667', '#62c2e4', '#f17100', '#f9dc71', '#96bfff'],
  unit: '条/猪',
  labelNum: 8,
});

axios.get('/api/pig_inventory')
    .then(response => {
      config.data = response.data.map(item => ({
        name: item.flavor,
        value: item.quantity
      }));
    })
    .catch(error => {
      console.error('Error fetching pig inventory data:', error);
    });
</script>

<style scoped>
/* 这里可以添加组件的样式 */
@import "@/assets/setBox.css";
</style>

