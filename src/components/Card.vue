<template>
    <div class="card my-2">
        <div class="card-body p-3 mb-1 bg-light text-dark rounded-bottom">
            <img class="card-img-top" :src="getImgUrl(picture)">
            <h5 class="card-title mt-3">{{ story_title }}</h5>
            <h6 class="card-subtitle mb-2 text-muted">{{ date }}</h6>
            <p class="card-text">{{ content }}</p>
        </div>
    </div>
</template>


<style :lang="scss" scoped>
    .card {
        border: none;
        background: rgba(255,255,255,1);
    }
    .card-body {
        font-family: 'Avenir', Helvetica, Arial, sans-serif;
        font-weight: 500;
    }
</style>


<script>
    export default {
        name: "card",
        props: {
            story_title: String,
            content: Array,
            picture: String,
            date: String,
            flipped: Boolean,
        }, 
        methods: {
            getImgUrl: function (pic) {
                return require('../assets/' + pic)
            }
        }
    }
</script>