<!-- TitleBox.vue -->
<script setup>
import { defineProps } from 'vue';

const props = defineProps({
  text: {
    type: String,
    required: true
  }
});
</script>

<template>
  <div class="titBox">
    <div class="bak"></div>
    <span>{{ text }}</span>
  </div>
</template>

<style scoped>
.titBox {
  display: flex;  /* 使用Flexbox布局 */
  align-items: center;  /* 垂直居中 */
  width: 100%;
  height: 3rem;
  //background-color: red;
  padding-left: 1.2rem;
  padding-top: 0.1rem;
}
.titBox .bak {
  width: 10px;
  height: 2rem;
  background-color: #00bd7e;

}

.titBox span{
  font-size: 1.5rem;
  font-weight: bold;
  display: flex;  /* 使用Flexbox布局 */
  align-items: center;  /* 垂直居中 */
  margin-left: 1rem;
}
</style>
