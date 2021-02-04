class API < Grape::API
  prefix 'api'
  format :json
  mount Public::Recipes
end