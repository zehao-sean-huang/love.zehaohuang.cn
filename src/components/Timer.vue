<template>
    <div>
        <span
                :sendSync="sendSync"
                :autoStart="autoStart"
                :defaultVal="defaultVal"
        >{{countString}}</span>
    </div>
</template>

<script>
  export default {
    data() {
      return {
        isStart: false,
        globalTimer: null,//获取setInterval对象值
        countString: '0秒', //用来显示时间
        day: 0,
        hour: 0,
        minute: 0,
        second: 0,
        millisecond: 0,
        countVal: this.defaultVal, //获取初始值
        pauseTime: 0,
      }
    },
    watch: {
      'countString': {
        deep: true,
        handler: function(val, oldVal) {
          var vm = this
          if (vm.needSendSunc) {
            vm.passToParent(val)
          }
        }
      },
      'needSendSunc': {
        deep: true,
        handler: function(val) {
          var vm = this
          if (val) {
            vm.passToParent(vm.countString)
          }
        }
      }
    },
    props: {
      sendSync: {
        type: Boolean,
        default: false,
      },
      autoStart: {
        type: Boolean,
        default: false,
      },
      defaultVal: {
        type: Number,
        default: 0,
      }
    },
    mounted() {
      var vm = this
      if (vm.autoStart) {
        vm.startCountFn()
      }
    },
    computed: {
      needSendSunc: function() {
        return this.sendSync
      }
    },
    created: function() {
      this.$on('startCount', function() {
        this.startCountFn()
      });
      this.$on('stopCount', function() {
        this.stopCountFn()
      });
    },
    components: {},
    methods: {
      counterFn: function(counterTime) {
        var vm = this
        var nowDate = new Date().getTime()
        if(vm.pauseTime == 0){
          var num = nowDate - counterTime //计算时间毫秒差
        }else{
          vm.pauseTime = vm.pauseTime +10
          var num = vm.pauseTime - counterTime //计算时间毫秒差
        }
        var leave1 = num % (24 * 3600 * 1000)    //计算天数后剩余的毫秒数
        var leave2 = leave1 % (3600 * 1000)        //计算小时数后剩余的毫秒数
        var leave3 = leave2 % (60 * 1000)      //计算分钟数后剩余的毫秒数
        vm.day = Math.floor(num / (24 * 3600 * 1000)) //计算相差天数
        vm.hour = Math.floor(leave1 / (3600 * 1000))//计算相差小时
        vm.minute = Math.floor(leave2 / (60 * 1000))//计算相差分钟
        vm.second = Math.round(leave3 / 1000) //计算相差秒
        if (vm.day > 0) {
          vm.countString = `${vm.day}天 ${vm.hour}小时 ${vm.minute}分 ${vm.second}秒`;
        } else if (vm.hour > 0) {
          vm.countString = `${vm.hour}小时 ${vm.minute}分 ${vm.second}秒`;
        } else if (vm.minute > 0) {
          vm.countString = `${vm.minute}分 ${vm.second}秒`;
        } else {
          vm.countString = `${vm.second}秒`;
        }
      },
      startCountFn: function() {
        var vm = this
        if (!vm.isStart) {
          vm.countVal = vm.countVal ? vm.countVal : new Date().getTime()
          var timer = setInterval(function() {
            vm.counterFn(vm.countVal)
          }, 10);
          vm.globalTimer = timer;
          vm.isStart = true;
        }
      },
      stopCountFn: function() {
        var vm = this;
        if (vm.isStart) {
          window.clearInterval(vm.globalTimer);
          vm.globalTimer = null;
          vm.isStart = false;
          vm.pauseTime = new Date().getTime();
        }
      },
      passToParent: function(data) {
        var vm = this
        this.$emit("getDataFromChild", data)
      },
    }
  }
</script>
<style>

</style>
