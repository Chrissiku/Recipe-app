Rails.application.routes.draw do
  # get 'foods/index'
  # get 'foods/show'
  # get 'foods/new'
  # get 'foods/create'
  # get 'foods/destroy'
  # devise_for :users
  
  # devise_scope  :user do
  #   get 'users/sign_out' => 'devise/sessions#destroy'
  # end

  # root 'users#index'
  # resources :users

  devise_for :users

  root "public_recipes#index"
  resources :users, only: [:index] do
    resources :recipes
    resources :inventories
  end
  resources :public_recipes, only: [:index, :show]

  get 'inventory_foods/:id/new', to: 'inventory_foods#new'
  delete 'inventory_foods/:id/destroy/:food_id', to: 'inventory_foods#destroy'
  post 'inventory_foods/:id/create', to: 'inventory_foods#create'
  resources :foods, only:[:index,:new,:create,:destroy]

  get 'recipe_foods/:id/new', to: 'recipe_foods#new'
  delete 'recipe_foods/:id/destroy/:food_id', to: 'recipe_foods#destroy'
  post 'recipe_foods/:id/create', to: 'recipe_foods#create'

  devise_scope  :user do
    get 'users/sign_out' => 'devise/sessions#destroy'
  end
end
