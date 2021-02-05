<template>
  <main role="main" class="container">
    <div class="d-flex align-items-center p-3 my-3 text-white-50 bg-purple rounded shadow-sm">
      <img class="mr-3" src="/docs/4.6/assets/brand/bootstrap-outline.svg" alt="" width="48" height="48">
      <div class="lh-100">
        <h6 class="mb-0 text-white lh-100">Marley Spoon</h6>
        <small>Recipes & more</small>
      </div>
    </div>
    <router-view></router-view>
  </main>
</template>

<script>
export default {
  data: function () {
    return {
      message: "Hello Vue!"
    }
  }
}
</script>

<style scoped>
p {
  font-size: 2em;
  text-align: center;
}
</style>
