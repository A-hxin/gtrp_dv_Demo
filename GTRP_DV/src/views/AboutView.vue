<template>
  <div>
    <h1>猪销售数据</h1>
    <div v-if="loading">加载中...</div>
    <div v-if="error">{{ error }}</div>
    <ul v-if="data">
      <li v-for="sale in data" :key="sale.id">
        {{ sale.flavor }}: {{ sale.sales }}
      </li>
    </ul>
  </div>
</template>

<script>
import axios from 'axios';

export default {
  data() {
    return {
      data: null,
      loading: true,
      error: null,
    };
  },
  mounted() {
    axios.get('/api/pig_sales')
        .then(response => {
          this.data = response.data;
          this.loading = false;
        })
        .catch(error => {
          this.error = '加载数据失败';
          this.loading = false;
        });
  },
};
</script>

<style scoped>
/* 这里可以添加组件的样式 */
</style>
