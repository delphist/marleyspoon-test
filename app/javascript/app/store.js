import Vue from 'vue'
import Vuex from 'vuex'
import recipes from "./modules/Recipes/store";

Vue.use(Vuex)

export default new Vuex.Store({
  getters: {},
  actions: {},
  state: {},
  modules: {
    recipes
  }
});
