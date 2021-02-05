module Public
  module Entities
    class Recipe < Grape::Entity
      expose :id

      expose :title do |recipe|
        recipe.fields[:title]
      end

      expose :photo do |recipe|
        recipe.fields[:photo]&.url
      end

      expose :small_description, unless: { type: :full } do |recipe|
        recipe.fields[:description]
      end

      expose :description, if: { type: :full } do |recipe|
        recipe.fields[:description]
      end
    end
  end
end
