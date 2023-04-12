<script setup>
import { format } from 'date-fns/format'


</script>

<template>
  <div>
    <h1>
     
      
      <div> {{format(new Date(), 'yyyy-MM-dd HH:mm:ss')}}</div>
    </h1>
  </div>
</template>

<style scoped>
h1 {
  font-weight: 500;
  font-size: 2.6rem;
  top: -10px;
  text-align: center;
}

h3 {
  font-size: 1.2rem;
}



@media (min-width: 1024px) {
  .h1 {
    text-align: left;
  }
}
</style>
