import axios from "axios";

const getRecipe = (id, options) => {
  return axios.get(`/api/recipes/${id}`, options);
};

export default {
  getRecipe
};
