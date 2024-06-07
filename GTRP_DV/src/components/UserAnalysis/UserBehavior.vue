<template>
  <div>
    <div v-if="loading">加载中...</div>
    <div v-if="error">{{ error }}</div>
    <div ref="radarChart" class="tx2"></div>
  </div>
</template>

<script setup>
import {ref, onMounted} from 'vue';
import * as echarts from 'echarts';
import axios from 'axios';

const radarChart = ref(null);
const loading = ref(true);
const error = ref(null);

const renderChart = (data) => {
  const chartDom = radarChart.value;
  const myChart = echarts.init(chartDom);

  const indicators = data.map(item => ({
    name: item.action_name,
    max: Math.max(...data.map(d => d.action_count)) * 1.1  // 设定最大值稍微大于数据中的最大值
  }));

  const values = data.map(item => item.action_count);

  const option = {
    title: {
      textStyle: {
        color: '#29b268',  // 修改标题字体颜色
      }
    },
    legend: {
      data: ['User Actions'],
      textStyle: {
        color: '#f98703'  // 修改图例字体颜色
      }
    },
    radar: {
      indicator: indicators,
      name: {
        textStyle: {
          color: '#29b268'  // 修改雷达图指示器名称颜色
        }
      },
      splitLine: {
        lineStyle: {
          color: '#29b268'  // 修改雷达图分割线颜色
        }
      },
      axisLine: {
        lineStyle: {
          color: '##f98703'  // 修改雷达图轴线颜色
        }
      }
    },
    series: [
      {
        type: 'radar',
        data: [
          {
            value: values,
            // name: 'User Actions',
            lineStyle: {
              color: '#f98703'  // 修改线条颜色
            },
            itemStyle: {
              color: '#f98703'  // 修改数据点颜色
            },
            areaStyle: {
              color: 'rgba(41, 178, 104, 0.1)'  // 修改填充颜色
            }
          }
        ]
      }
    ]
  };

  myChart.setOption(option);
};

onMounted(() => {
  axios.get('/api/user_acts')
      .then(response => {
        renderChart(response.data);
        loading.value = false;
      })
      .catch(err => {
        error.value = '加载数据失败';
        loading.value = false;
      });
});
</script>

<style scoped>
@import '@/assets/setBox.css';
</style>
