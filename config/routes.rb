# frozen_string_literal: true

Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  get "task", to: "app/task#index"

  namespace "api" do
    get "task", to: "task#index"
  end
end
