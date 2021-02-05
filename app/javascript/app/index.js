import Vue from "vue";
import App from "./App";
import store from "./store";
import router from "./router";
import "../stylesheets/application.scss";

document.addEventListener("DOMContentLoaded", () => {
  const app = new Vue({
    router,
    store,
    render: (h) => h(App),
  }).$mount();

  document.body.appendChild(app.$el);
});
