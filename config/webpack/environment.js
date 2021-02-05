const { environment } = require('@rails/webpacker')
const { VueLoaderPlugin } = require('vue-loader')
const vue = require('./loaders/vue')
const pug = require('./loaders/pug')
const path = require('path')

environment.config.merge({
  resolve: {
    alias: {
      '@': path.resolve(__dirname, '..', '..', 'app/javascript')
    }
  }
})

environment.plugins.prepend('VueLoaderPlugin', new VueLoaderPlugin())
environment.loaders.prepend('vue', vue)
environment.loaders.prepend('pug', pug)

module.exports = environment
