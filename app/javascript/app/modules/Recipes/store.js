import api from "./api";

export default {
  namespaced: true,
  state: {
    isLoading: false,
    items: [],
    page: 1,
    isHavingMoreItems: true,
  },
  actions: {
    getRecipes: ({ commit, state }) => {
      commit("getRecipesRequestStart");

      return api
        .getRecipes({
          params: { page: state.page },
        })
        .then((result) => commit("getRecipesRequestSuccess", result.data))
        .catch((error) => commit("getRecipesRequestFailure", error));
    },
    getMoreRecipes: ({ commit, state }) => {
      commit("getMoreRecipesRequestStart");

      return api
        .getRecipes({
          params: { page: state.page },
        })
        .then((result) => commit("getMoreRecipesRequestSuccess", result.data))
        .catch((error) => commit("getRecipesRequestFailure", error));
    },
  },
  mutations: {
    getRecipesRequestStart: (state) => {
      state.page = 1;
      state.items = [];
      state.isLoading = true;
    },
    getRecipesRequestSuccess: (state, items) => {
      state.items = items;
      state.isLoading = false;
    },
    getMoreRecipesRequestStart: (state) => {
      state.page += 1;
      state.isLoading = true;
    },
    getMoreRecipesRequestSuccess: (state, items) => {
      state.isHavingMoreItems = items.length !== 0;
      state.items = state.items.concat(items);
      state.isLoading = false;
    },
    getRecipesRequestFailure: (state, error) => {
      state.isLoading = false;
      state.error = error;
    },
  },
};
