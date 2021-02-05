import Vue from 'vue'
import Router from 'vue-router'

import Recipe from './modules/Recipe'
import Recipes from './modules/Recipes'

Vue.use(Router)

export default new Router({
  routes: [
    {
      path: '/',
      name: 'home',
      component: Recipes,
    },
    {
      path: '/recipe/:id',
      name: 'recipe',
      component: Recipe,
    }
  ]
})
