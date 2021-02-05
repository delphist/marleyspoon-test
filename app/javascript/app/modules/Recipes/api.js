import axios from "axios";

const getRecipes = options => {
  return axios.get('/api/recipes', options);
};

export default {
  getRecipes
};
