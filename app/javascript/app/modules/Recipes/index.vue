<template lang="pug">
  .my-3.p-3.bg-white.rounded.shadow-sm
    h6.border-bottom.border-gray.pb-2.mb-0 Recent recipes
    .media.text-muted.pt-3(v-for='item in items')
      img.bd-placeholder-img.mr-2.rounded(:src="item.photo_preview")
      p.media-body.pb-3.mb-0.small.lh-125.border-bottom.border-gray
        router-link.d-block.text-gray-dark(:to="{ name: 'recipe', params: { id: item.id } }") {{ item.title }}
        | {{ item.small_description }}
    loading-spinner.mt-3(v-if="isLoading")
    small.d-block.text-right.mt-3(v-else)
      a(href='#' @click.prevent="getMoreRecipes" v-if="isHavingMoreItems") Load more...
      span(v-else) No more items!
</template>

<script>
import { mapActions, mapState } from "vuex";
import LoadingSpinner from "@/app/components/LoadingSpinner";

export default {
  components: {
    LoadingSpinner,
  },
  mounted() {
    this.getRecipes();
  },
  computed: {
    ...mapState("recipes", ["items", "isLoading", "isHavingMoreItems"]),
  },
  methods: {
    ...mapActions("recipes", ["getRecipes", "getMoreRecipes"]),
  },
};
</script>
