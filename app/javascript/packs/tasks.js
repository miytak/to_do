import Vue from 'vue'
import axios from 'axios'

new Vue({
  el: '#tasks',
  data: {
    tasks: []
  },
  methods: {
    fetchTasks: function() {
      axios.get('/api/tasks').then((response) => {
        this.tasks = response.data.tasks;
      })
    }
  },
  created: function() {
    this.fetchTasks()
  }
})
