# frozen_string_literal: true

module Public
  class Recipes < Grape::API
    helpers Public::Helpers::ContentfulHelper

    resource :recipes do
      params do
        optional :page, type: Integer
      end
      get do
        present(
          ListRecipesQuery.new(recipe_repository, params[:page]).call,
          with: Entities::Recipe
        )
      end

      params do
        requires :id, type: String
      end
      route_param :id do
        get do
          present(
            GetRecipeQuery.new(recipe_repository, params[:id]).call,
            with: Entities::Recipe,
            type: :full
          )
        end
      end
    end
  end
end
