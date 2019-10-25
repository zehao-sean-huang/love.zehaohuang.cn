<template>
  <div id="home">
    <div id="home-background-image" class="text-center">
      <h1 id="home-background-counter" class="display-1">
        <Timer :auto-start="true" :default-val="1555570800000"/>
      </h1>
      <h1 id="home-background-counter-mobile">
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

  #home-background-counter-mobile {
    position: relative;
    top: 50%;
    color: rgba(255,255,255,0.75);
    font-family: 'ZCOOL KuaiLe', serif;
  }

  // Small devices (landscape phones, 576px and up)
  @media (max-width: 992px) {
    #home-background-counter {
      display: none;
    }
    #home-background-counter-mobile {
      display: block;
    }
  }

  // Large devices (desktops, 992px and up)
  @media (min-width: 992px) {
    #home-background-counter {
      display: block;
    }
    #home-background-counter-mobile {
      display: none;
    }
  }

</style>
