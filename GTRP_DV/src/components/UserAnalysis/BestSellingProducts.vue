<template>
  <div>
    <div v-if="loading">加载中...</div>
    <div v-if="error">{{ error }}</div>
    <div v-if="bestsellers" class="bestsellers-list">
      <div v-for="item in bestsellers" :key="item.rank" class="bestseller-item">
        <strong>{{ item.rank }}</strong>: {{ item.product }}
      </div>
    </div>
  </div>
</template>

<script setup>
import { ref, onMounted } from 'vue';
import axios from 'axios';

const bestsellers = ref(null);
const loading = ref(true);
const error = ref(null);

onMounted(async () => {
  try {
    const response = await axios.get('/api/bestsellers');
    bestsellers.value = response.data;
  } catch (err) {
    error.value = '加载数据失败: ' + err.message;
  } finally {
    loading.value = false;
  }
});
</script>

<style scoped>
@import '@/assets/setBox.css';
</style>
