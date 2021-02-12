<template lang="pug">
  .my-3.p-3.bg-white.rounded.shadow-sm
    h5 Not found
    p {{ error }}
</template>

<script>
  export default {
    props: {
      error: {
        default: "Sorry, this page wasn't found"
      },
    }
  };
</script>
