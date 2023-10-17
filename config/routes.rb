Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  
  get "/spaceshuttles", to: "space_shuttles#index"
  get "/spaceshuttles/:id", to: "space_shuttles#show"

  get "/spaceshuttles/:id/astronauts", to: "space_shuttles/astronauts#index"

  get "/astronauts", to: "astronauts#index"
  get "/astronauts/:id", to: "astronauts#show"

end
