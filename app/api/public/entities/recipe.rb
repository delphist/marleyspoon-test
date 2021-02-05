# frozen_string_literal: true

module Public
  module Entities
    class Recipe < Grape::Entity
      include Public::Helpers::MarkdownHelper

      expose :id

      expose :title do |recipe|
        recipe.fields[:title]
      end

      expose :photo_preview, unless: { type: :full } do |recipe|
        recipe.fields[:photo]&.image_url(width: 32, height: 32, fit: :thumb)
      end

      expose :photo_medium, if: { type: :full } do |recipe|
        recipe.fields[:photo]&.image_url(width: 600)
      end

      expose :photo_original, if: { type: :full } do |recipe|
        recipe.fields[:photo]&.image_url
      end

      expose :small_description, unless: { type: :full } do |recipe|
        extract_markdown(recipe.fields[:description]).truncate(150)
      end

      expose :description, if: { type: :full } do |recipe|
        convert_markdown(recipe.fields[:description])
      end

      expose :tags, if: { type: :full }, using: Tag do |recipe|
        recipe.fields[:tags]
      end

      expose :chef, if: { type: :full }, safe: true, using: Chef do |recipe|
        recipe.fields[:chef]
      end
    end
  end
end
