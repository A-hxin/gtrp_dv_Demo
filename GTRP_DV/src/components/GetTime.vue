<script setup>
import {ref, onMounted} from 'vue'

const currentDate = ref('')
const currentTime = ref('')

function updateDate() {
  const now = new Date()
  const year = now.getFullYear()
  const month = String(now.getMonth() + 1).padStart(2, '0')
  const day = String(now.getDate()).padStart(2, '0')
  currentDate.value = `${year}-${month}-${day}`
}

function updateTime() {
  const now = new Date()
  const hours = String(now.getHours()).padStart(2, '0')
  const minutes = String(now.getMinutes()).padStart(2, '0')
  const seconds = String(now.getSeconds()).padStart(2, '0')
  currentTime.value = `${hours}:${minutes}:${seconds}`
}

onMounted(() => {
  updateDate()
  updateTime()
  setInterval(() => {
    updateDate()
    updateTime()
  }, 1000)
})
</script>

<template>
  <div class="timeSet">
    <span v-html="currentTime" class="time"></span>
    <span v-html="currentDate" class="toDAy"></span>
  </div>

</template>

<style scoped>

.timeSet {
  //text-align: right; /* 时间内容右对齐 */
  position: relative;
  background-color: pink;
  //width: 240px;
}

.toDAy {
  font-size: 0.9rem;
  position: absolute;
  right: 10px;
  top: 25px;
}

.time {
  font-size: 1.6rem;
  position: absolute;
  right: 10px;
  top: 4px;
}
</style>