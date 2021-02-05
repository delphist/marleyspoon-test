<template lang="pug">
  .my-3.p-3.bg-white.rounded.shadow-sm
    h6.border-bottom.border-gray.pb-2.mb-0 Recent recipes
    .media.text-muted.pt-3(v-for='item in items')
      svg.bd-placeholder-img.mr-2.rounded(width='32' height='32' xmlns='http://www.w3.org/2000/svg' role='img' aria-label='Placeholder: 32x32' preserveaspectratio='xMidYMid slice' focusable='false')
        title Placeholder
        rect(width='100%' height='100%' fill='#007bff')
        text(x='50%' y='50%' fill='#007bff' dy='.3em') 32x32
      p.media-body.pb-3.mb-0.small.lh-125.border-bottom.border-gray
        router-link.d-block.text-gray-dark(:to="{ name: 'recipe', params: { id: item.id } }") {{ item.title }}
        | {{ item.small_description }}
    small.d-block.text-right.mt-3
      a(href='#' @click.prevent="getMoreRecipes" v-if="isHavingMoreItems") Load more...
</template>

<script>
  import { mapActions, mapState } from "vuex";

  export default {
    mounted() {
      this.getRecipes();
    },
    computed: {
      ...mapState("recipes", ["items", "isLoading", "isHavingMoreItems"]),
    },
    methods: {
      ...mapActions("recipes", ["getRecipes", "getMoreRecipes"])
    }
  }
</script>
