import { createStore } from 'vuex';
import axios from 'axios';

export default createStore({
    state: {
        metrics: [],
        loading: true,
        error: null,
    },
    mutations: {
        setMetrics(state, data) {
            state.metrics = data;
        },
        setLoading(state, loading) {
            state.loading = loading;
        },
        setError(state, error) {
            state.error = error;
        },
    },
    actions: {
        fetchMetrics({ commit }) {
            commit('setLoading', true);
            axios.get('/api/user_getdata')
                .then(response => {
                    commit('setMetrics', response.data);
                    commit('setLoading', false);
                })
                .catch(error => {
                    commit('setError', '加载数据失败');
                    commit('setLoading', false);
                });
        },
    },
    getters: {
        getMetrics: state => state.metrics,
        getMetricByName: state => name => state.metrics.find(metric => metric.metric_name === name),
        isLoading: state => state.loading,
        getError: state => state.error,
    },
});
