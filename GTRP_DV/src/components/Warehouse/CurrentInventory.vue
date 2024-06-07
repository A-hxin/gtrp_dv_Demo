<template>
  <div ref="chart" class="tx12"></div>
</template>

<script setup>
import { ref, onMounted, onBeforeUnmount } from 'vue';
import * as echarts from 'echarts';

const chart = ref(null);

// 默认配置
const defaultOption = {
  grid: {
    left: '2%',
    right: '3%',
    bottom: '2%',
    top: '10%',
    containLabel: true
  },
  xAxis: {
    type: 'category',
    data: ['原味烤乳猪', '蜜汁烤乳猪', '香辣烤乳猪', '五香烤乳猪']
  },
  yAxis: {
    type: 'value'
  },
  series: [
    {
      data: [120, 200, 150, 80, 70],
      type: 'bar',
      itemStyle: {
        color: '#8bc668' // 设置柱状图的颜色
      }
    }
  ]
};

onMounted(() => {
  // 初始化 echarts 实例
  chart.value = echarts.init(chart.value);
  // 将默认配置合并到 echarts 实例中
  chart.value.setOption(defaultOption);
});

onBeforeUnmount(() => {
  // 在组件销毁之前销毁 echarts 实例，释放资源
  if (chart.value) {
    chart.value.dispose();
    chart.value = null;
  }
});
</script>

<style scoped>
/* 这里可以添加组件的样式 */
@import "@/assets/setBox.css";
</style>
