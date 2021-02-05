<template lang="pug">
  .my-3.p-3.bg-white.rounded.shadow-sm
    loading-spinner(v-if="isLoading")
    div(v-else)
      h4.border-bottom.border-gray.pb-2.mb-2 {{ recipe.title }}
      .row
        .col-12.col-md-6.pr-3.pr-md-1
          a(:href="recipe.photo_original" target="_blank")
            img.rounded.img-fluid(:src="recipe.photo_medium")
        .col-12.col-md-6.pl-3.pl-md-1.pt-3.pt-md-0
          div(v-html="recipe.description")
          div.text-muted.pb-2(v-if="recipe.chef") {{ recipe.chef.name }}
          div.pb-2(v-if="recipe.tags")
            b Tags:&nbsp;
            span(v-for="tag in recipe.tags") {{ tag.name }}
</template>

<script>
  import { mapActions, mapState } from "vuex";
  import LoadingSpinner from '@/app/components/LoadingSpinner'

  export default {
    components: {
      LoadingSpinner,
    },
    mounted() {
      this.getRecipe(this.$route.params.id);
    },
    computed: {
      ...mapState("recipe", ["recipe", "isLoading"]),
    },
    methods: {
      ...mapActions("recipe", ["getRecipe"])
    }
  }
</script>
