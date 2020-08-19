<template>
    <div class="stories">
        <div class="container">
            <div id="home-background-image" class="text-center">
            <div id="stories-col" class="card-columns">
                <card   :story_title = "'Kissing in the Huge Wind'"
                        :content =  "'First date at Twin Peak, with thousand times later lol'"
                        :picture = "'story1.jpg'"
                        :date = "'2019/04/27'"
                        :flipped = False
                />
                <card   :story_title = "'Friend\'s Friend'"
                        :content =  "'Back to the time that we are still friend... '"
                        :picture = "'story2.jpg'"
                        :date = "'2019/03/29'"
                        :flipped = False
                />
                <card   :story_title = "'Sneak into National Park w/o Paying'"
                        :content =  "'Seeing my brother = Free visit to 17-miles'"
                        :picture = "'story3.jpg'"
                        :date = "'2019/10/21'"
                        :flipped = False
                />
                <card   :story_title = "'Teach My Boy Skiing'"
                        :content =  "'First time in life seeing so many snow, though almost losing our lives on the road'"
                        :picture = "'story4.jpg'"
                        :date = "'2019/12/01'"
                        :flipped = False
                />
                <card   :story_title = "'First V-Day'"
                        :content =  "'Sweetest thing in life must be seeing myself drown in love in your eyes'"
                        :picture = "'story5.jpg'"
                        :date = "'2020/02/14'"
                        :flipped = False
                />
                <card   :story_title = "'Happiness without Reasons'"
                        :content =  "'Tbh, I cannot even remember why we are smiling so happily'"
                        :picture = "'story6.jpg'"
                        :date = "'2020/02/14'"
                        :flipped = False
                />
                <card   :story_title = "'Trip on the Sea'"
                        :content =  "'Will never forget the sunset, the wave, and these memories that are too good to be real'"
                        :picture = "'story7.jpg'"
                        :date = "'2019/08/18'"
                        :flipped = False
                />
            </div>
            </div>
        </div>
    </div>
</template>


<style lang="scss" scoped>
  @import url('https://fonts.googleapis.com/css?family=ZCOOL+KuaiLe');

  #home-background-image {
    width: 100%;
    height: 100%;
    position: absolute;
    left: 0;
    top: 0;
    background-image: url("../assets/stories-background.jpeg");
    background-size: cover;
    background-position: center;
    background-attachment: fixed;
    overflow-y: scroll;
    z-index: -1;
    color: white;
    text-align: center;
  }

  #stories-col {
    margin-top: 80px;
    padding-right:30px;
    padding-left:30px;
    margin-right:auto;
    margin-left:auto;
  }
  
  @media (min-width: 576px) {
    .card-columns {
        column-count: 2;
    }
  }

  @media (min-width: 850px) {
    .card-columns {
        column-count: 3;
    }
  }

  @media (min-width: 1200px) {
    .card-columns {
        column-count: 4;
    }
  }

</style>


<script>
  import Card from '@/components/Card.vue';
  export default {
    name: 'Stories',
    components: {
      Card
    }
  }
</script>