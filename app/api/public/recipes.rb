module Public
  class Recipes < Grape::API
    resource :recipes do
      get do
        # index
      end

      params do
        requires :id, type: String
      end
      route_param :id do
        get do
          # show
        end
      end
    end
  end
end