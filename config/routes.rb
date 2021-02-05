Rails.application.routes.draw do
  mount API => '/'
  root to: 'home#index'
end
