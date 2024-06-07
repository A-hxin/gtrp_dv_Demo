<template>
  <div class="tx4">
    产品质量:
    <el-rate
        v-model="productQuality"
        disabled
        show-score
        text-color="#ff9900"
        score-template="{value} 分"
    />
  </div>
<!--  <div class="tx4">-->
<!--    配送速度:-->
<!--    <el-rate-->
<!--        v-model="deliverySpeed"-->
<!--        disabled-->
<!--        show-score-->
<!--        text-color="#ff9900"-->
<!--        score-template="{value} 分"-->
<!--    />-->
<!--  </div>-->
  <div class="tx4">
    客户服务:
    <el-rate
        v-model="customerService"
        disabled
        show-score
        text-color="#ff9900"
        score-template="{value} 分"
    />
  </div>
</template>

<script lang="ts" setup>
import { ref, onMounted } from 'vue'

interface Metric {
  metric_name: string;
  metric_value: string | number;
}

const productQuality = ref(0);
const deliverySpeed = ref(0);
const customerService = ref(0);

async function fetchData() {
  try {
    const response = await fetch('/api/user_getdata');
    if (!response.ok) {
      throw new Error('Failed to fetch data');
    }
    const data = await response.json();
    data.forEach(item => {
      if (item.metric_name === '产品质量') {
        productQuality.value = Number(item.metric_value);
      } else if (item.metric_name === '配送速度') {
        deliverySpeed.value = Number(item.metric_value);
      } else if (item.metric_name === '客户服务') {
        customerService.value = Number(item.metric_value);
      }
    });
  } catch (error) {
    console.error('Error fetching data:', error);
  }
}

onMounted(() => {
  fetchData();
});
</script>

<style>
@import '@/assets/setBox.css';

</style>
