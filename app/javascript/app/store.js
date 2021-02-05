import Vue from "vue";
import Vuex from "vuex";
import recipes from "./modules/Recipes/store";
import recipe from "./modules/Recipe/store";

Vue.use(Vuex);

export default new Vuex.Store({
  getters: {},
  actions: {},
  state: {},
  modules: {
    recipes,
    recipe,
  },
});
