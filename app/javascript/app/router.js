import Vue from "vue";
import Router from "vue-router";

import NotFound from "@/app/components/NotFound";
import Recipe from "@/app/modules/Recipe";
import Recipes from "@/app/modules/Recipes";

Vue.use(Router);

export default new Router({
  mode: "history",
  routes: [
    {
      path: "/",
      name: "home",
      component: Recipes,
    },
    {
      path: "/recipe/:id",
      name: "recipe",
      component: Recipe,
    },
    {
      path: "*",
      component: NotFound
    }
  ],
});
