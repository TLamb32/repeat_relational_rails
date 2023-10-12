Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  get "/spaceshuttles", to: "space_shuttles#index"
  get "/spaceshuttles/:id", to: "space_shuttles#show"

  get "/astronauts", to: "astronauts#index"
  get "/astronauts/:id", to: "astronauts#show"
end
