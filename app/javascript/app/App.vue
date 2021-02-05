<template lang="pug">
  div
    main.container(role='main')
      .d-flex.align-items-center.p-3.my-3.text-white-50.bg-marleyspoon.rounded.shadow-sm
        router-link(to='/')
          img.mr-3(:src="require('@/images/logo.png')" alt='' width='48')
        .lh-100
          router-link.mb-0.text-white.lh-100.h5.text-dark(to='/') Marley Spoon
      router-view
    footer.container
      p.text-muted
        | source:&nbsp;
        a(href='http://github.com/delphist/marleyspoon-test' target='_blank') github
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
