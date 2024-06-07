<script setup>
import {RouterView} from 'vue-router'
import NavTop from '@/components/NavTop.vue';
import { onMounted } from 'vue';
import { useStore } from 'vuex';

const store = useStore();

onMounted(() => {
  store.dispatch('fetchMetrics');
});
</script>

<template>
  <div id="background">
    <NavTop/>
<!--    <header>-->
<!--      <RouterLink to="/">主页</RouterLink>-->
<!--      <RouterLink to="/about">About</RouterLink>-->
<!--      <RouterLink to="/test">Test</RouterLink>-->
<!--    </header>-->
    <RouterView/>

  </div>

</template>

<style scoped>

</style>
