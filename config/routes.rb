# frozen_string_literal: true

Rails.application.routes.draw do
  mount API => '/'
  match '*path' => 'home#index', via: :all
  root to: 'home#index'
end
