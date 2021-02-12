import api from "./api";

export default {
  namespaced: true,
  state: {
    error: null,
    isLoading: false,
    recipe: [],
  },
  actions: {
    getRecipe: ({ commit }, id) => {
      commit("getRecipeRequestStart");

      return api
        .getRecipe(id)
        .then((result) => commit("getRecipeRequestSuccess", result.data))
        .catch((error) => commit("getRecipeRequestFailure", error));
    },
  },
  mutations: {
    getRecipeRequestStart: (state) => {
      state.error = null;
      state.recipe = null;
      state.isLoading = true;
    },
    getRecipeRequestSuccess: (state, recipe) => {
      state.recipe = recipe;
      state.isLoading = false;
    },
    getRecipeRequestFailure: (state, error) => {
      state.error = error;
      state.isLoading = false;
    },
  },
};
