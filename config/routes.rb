Rails.application.routes.draw do
  resources :recipes
  resources :users
  resources :ingredients
  resources :sessions

  get '/recipes_search', to: 'recipes#search'
  post '/add_ingredient/:id', to: 'ingredients#add_ingredient'
  post '/add_recipe/:id', to: 'recipes#add_recipe'
end
