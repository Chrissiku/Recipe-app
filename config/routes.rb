Rails.application.routes.draw do
  get 'foods/index'
  get 'foods/show'
  get 'foods/new'
  get 'foods/create'
  get 'foods/destroy'
  devise_for :users
  
  devise_scope  :user do
    get 'users/sign_out' => 'devise/sessions#destroy'
  end

  root 'users#index'
  resources :users
end
