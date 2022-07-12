# frozen_string_literal: true

Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  
  resources :tasks, only: %i[index, new]

  namespace :api do
    resources :tasks, only: %i[index]
  end
end
