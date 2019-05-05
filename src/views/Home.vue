<template>
  <div id="home">
    <div id="home-background-image" class="text-center">
      <h1 id="home-background-counter" class="display-1">
        <Timer :auto-start="true" :default-val="1555570800000"/>
      </h1>
    </div>
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

<style lang="scss" scoped>
  @import url('https://fonts.googleapis.com/css?family=ZCOOL+KuaiLe');

  #home-background-image {
    width: 100%;
    height: 100%;
    position: absolute;
    left: 0;
    top: 0;
    background-image: url("../assets/home-background.jpg");
    background-size: cover;
    background-position: center;
    z-index: -1;
    color: white;
    text-align: center;
  }

  #home-background-counter {
    position: relative;
    top: 50%;
    color: rgba(255,255,255,0.75);
    font-family: 'ZCOOL KuaiLe', serif;
  }
</style>
