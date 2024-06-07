<template>
  <div ref="chart" class="tx12"></div>
</template>

<script setup>
import { ref, onMounted } from 'vue';
import * as echarts from 'echarts';

const chart = ref(null);

const option = {
  grid: {
    left: '2%',
    right: '2%',
    bottom: '2%',
    top: '10%',
    containLabel: true
  },
  xAxis: {
    type: 'category',
    boundaryGap: false
  },
  yAxis: {
    type: 'value',
    boundaryGap: [0, '30%']
  },
  visualMap: {
    type: 'piecewise',
    show: false,
    dimension: 0,
    seriesIndex: 0,
    pieces: [
      {
        gt: 1,
        lt: 3,
        color: 'rgba(0, 0, 180, 0.4)'
      },
      {
        gt: 5,
        lt: 7,
        color: 'rgba(0, 0, 180, 0.4)'
      }
    ]
  },
  series: [
    {
      type: 'line',
      smooth: 0.6,
      symbol: 'none',
      lineStyle: {
        color: '#7fbc50', // 修改线条颜色为 #7fbc50
        width: 5
      },
      markLine: {
        symbol: ['none', 'none'],
        label: { show: false },
        data: [{ xAxis: 1 }, { xAxis: 3 }, { xAxis: 5 }, { xAxis: 7 }]
      },
      areaStyle: {},
      data: [
        ['2024-06-01', 200],
        ['2024-06-02', 500],
        ['2024-06-03', 500],
        ['2024-06-04', 300],
        ['2024-06-05', 520],
        ['2024-06-06', 510],
        ['2024-06-07', 340],
        ['2024-06-08', 210],
        ['2024-06-09', 600],
        ['2024-06-10', 580],
      ]
    }
  ]
};

onMounted(() => {
  chart.value = echarts.init(chart.value);
  chart.value.setOption(option);
});
</script>
<style scoped>
/* 这里可以添加组件的样式 */
@import "@/assets/setBox.css";
</style>
