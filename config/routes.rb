Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  begin
    ActiveAdmin.routes(self)
  rescue StandardError
    ActiveAdmin::DatabaseHitDuringLoad
  end

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  devise_scope :users do
    post 'token' => 'users/refresh#create'
  end

  devise_for :users,
             path: '/',
             path_names: {
               sign_in: 'login',
               sign_out: 'logout',
               registration: 'signup'
             },
             controllers: {
               sessions: 'users/sessions',
               registrations: 'users/registrations'
             }

  resources :items do
    resources :options, only: :index
    resources :likes
  end

  resources :users
  resources :categories

  resources :likes do
    resources :items
  end

  resources :orders
  resources :line_items
  
  resources :reviews do
    resources :items
  end

  get '/items/category/:id' => 'items#category_item'
  put '/orders' => 'orders#update'
  get '/orders/list' => 'orders#show'
  get '/users/:id' => 'users#show'
  put '/users/:id' => 'users#update'
  # get '/reviews' => 'reviews#index'

end
