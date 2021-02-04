module Public
  module Helpers
    module ContentfulHelper
      CONTENTFUL_CLIENT = Contentful::Client.new(
        access_token: ENV.fetch('CONTENTFUL_TOKEN', '7ac531648a1b5e1dab6c18b0979f822a5aad0fe5f1109829b8a197eb2be4b84c'),
        space: ENV.fetch('CONTENTFUL_SPACE', 'kk2bw5ojx476'),
        environment: ENV.fetch('CONTENTFUL_ENVIRONMENT', 'master')
      )

      def recipe_repository
        RecipeRepository.new(CONTENTFUL_CLIENT)
      end
    end
  end
end