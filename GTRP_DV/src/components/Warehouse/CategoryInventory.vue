<style scoped>
@import '@/assets/setBox.css';
</style>

<template>
  <div>
    <dv-scroll-board :config="config" class="tx1"/>
  </div>
</template>

<script setup>
import { reactive, onMounted } from 'vue';
import axios from 'axios';


const config = reactive({
  header: ['产品', '数量', '状态'],
  data: [],
  index: true,
  headerBGC: '#c9eeca',
  columnWidth: [20,100, 80],
  align: ['center', 'center', 'center'],
  headerHeight: 40,
  oddRowBGC: 'rgba(255,255,255,0)',
  evenRowBGC: 'rgba(94,207,255,0.18)',
});

onMounted(async () => {
  try {
    const response = await axios.get('/api/product_inventory');
    config.data = response.data.map(item => [
      item.product,
      item.quantity.toString(),
      item.status,
    ]);
  } catch (error) {
    console.error('Error fetching product inventory:', error);
  }
});
</script>



