<template>
  <div demo-bg>
    <dv-scroll-board :config="config" class="tx8" @mouseover="mouseoverHandler" @click="clickHandler" />
  </div>
</template>
<script setup>
import { reactive, onMounted } from 'vue';
import axios from 'axios';

const config = reactive({
  header: ['类型', '数量', '销售额', '占比'],
  data: [],
  index: false,
  headerBGC: '#c9eeca',
  columnWidth: [110, 110, 120, 100],
  align: ['center', 'center', 'center', 'center'],
  headerHeight: 30,
  hoverPause:true,
  oddRowBGC: 'rgba(255,255,255,0)',
  evenRowBGC: 'rgba(94,207,255,0.18)',
});

const fetchCustomerSegments = async () => {
  try {
    const response = await axios.get('/api/customer_segments');
    // 清空旧数据
    config.data = [];
    // 填充新数据
    response.data.forEach(segment => {
      config.data.push([
        segment.segment,
        segment.quantity.toString(),
        segment.sales,
        segment.percent + '%',
      ]);
    });
  } catch (error) {
    console.error('Error fetching customer segments:', error);
  }
};

onMounted(() => {
  fetchCustomerSegments();
});

const mouseoverHandler = (e) => {
  console.log(e);
};

const clickHandler = (e) => {
  console.log(e);
};
</script>
<style scoped>
/* 这里可以添加组件的样式 */
@import "@/assets/setBox.css";
</style>


