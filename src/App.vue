<template>
  <div id="app">
  <ul>
    <li v-for="user in users" :key="user.id">
      {{user.id}}::{{user.name}}
    </li>
  </ul>
  </div>
</template>

<script>
import axios from "axios"
export default {
  name: 'App',
  data(){
    return {
      users:[]
    }
  },
  created(){
    axios.get("/api/users").then(res=>{
      console.log(res);
      this.users = res.data
    })
  }
}
</script>

