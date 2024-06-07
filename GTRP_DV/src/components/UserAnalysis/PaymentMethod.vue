<template>
  <div>
    <div v-if="loading">加载中...</div>

    <div v-if="error">{{ error }}</div>

    <div v-if="monthlySales" class="ox3">
      {{ monthlySales.metric_value }}
      <!--      <el-statistic  :value="monthlySales.metric_value" />-->
    </div>
  </div>
</template>

<script setup>
import { ref, onMounted } from 'vue';
import axios from 'axios';

const monthlySales = ref(null);
const loading = ref(true);
const error = ref(null);

onMounted(() => {
  axios.get('/api/user_getdata')
      .then(response => {
        // 筛选出当月销售额
        const salesData = response.data.find(metric => metric.metric_name === '常用支付方式');
        if (salesData) {
          monthlySales.value = salesData;
        } else {
          error.value = '没有找到';
        }
        loading.value = false;
      })
      .catch(err => {
        error.value = '加载数据失败';
        loading.value = false;
      });
});
</script>

<style scoped>
/* 这里可以添加组件的样式 */
@import '@/assets/setBox.css';
</style>
