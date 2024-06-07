<template>
  <div demo-bg>
    <dv-scroll-board :config="config" class="tx11" @mouseover="mouseoverHandler" @click="clickHandler" />
  </div>
</template>

<script setup>
import { reactive, onMounted } from 'vue';
import axios from 'axios';

const config = reactive({
  header: ['ID', '城市', '订单数量', '总销售额', '平均订单价格'],
  data: [],
  index: true, // 开启显示行号
  headerBGC: '#c9eeca',
  columnWidth: [80, 110, 110, 120, 100], // 调整列宽以适应ID列
  align: ['center', 'center', 'center', 'center', 'center'],
  headerHeight: 35,
  rowNum:4,
  hoverPause:true,
  oddRowBGC: 'rgba(255,255,255,0)',
  evenRowBGC: 'rgba(94,207,255,0.18)',
});

const fetchCityOrders = async () => {
  try {
    const response = await axios.get('/api/city_orders');
    // 清空旧数据
    config.data = [];
    // 填充新数据
    response.data.forEach(cityOrder => {
      config.data.push([
        cityOrder.id.toString(), // 将ID转换为字符串
        cityOrder.city,
        cityOrder.order_count.toString(),
        cityOrder.total_sales,
        cityOrder.avg_order_price,
      ]);
    });
  } catch (error) {
    console.error('Error fetching city orders:', error);
  }
};

onMounted(() => {
  fetchCityOrders();
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

