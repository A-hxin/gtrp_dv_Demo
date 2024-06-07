<script setup>

import GetTime from "@/components/GetTime.vue";
</script>

<template>
  <nav id="navTop">
    <GetTime class="time"/>
    <h1>—— 粤有味烤乳猪订单销售可视化大屏 ——</h1>

  </nav>
</template>

<style scoped>
#navTop {
  text-align: center;
  width: 100%;
  font-size: 1.4rem;
  line-height: 8vh;
  margin-bottom: 1.5rem;
  background-color: rgba(0, 189, 126, 0.09);
  position: relative;
}


.time{
position: relative;
  right: 20px;
  top: -10px;
}
</style>