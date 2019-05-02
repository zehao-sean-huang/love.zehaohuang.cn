<template>
  <div class="home">
    <h1><Timer :auto-start="true" :default-val="1555570800000" /></h1>
    <!--<img alt="xhw" src="../assets/profile.png">-->
  </div>
</template>

<script>
// @ is an alias to /src
import Timer from '@/components/Timer.vue';

export default {
  name: 'home',
  components: {
    Timer,
  },
};
</script>
