import './assets/main.css'

import { createApp } from 'vue'
import App from './App.vue'
import router from './router'
import DataVVue3 from '@kjgl77/datav-vue3'
import ElementPlus from 'element-plus';
import * as echarts from 'echarts';
import 'element-plus/dist/index.css';
import store from './store';

const app = createApp(App)

app
    .use(router)
    .use(DataVVue3)
    .use(ElementPlus)
    .use(store)
    .config.globalProperties.$echarts = echarts

app.mount('#app')
