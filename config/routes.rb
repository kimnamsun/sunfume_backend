Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  begin
    ActiveAdmin.routes(self)
  rescue StandardError
    ActiveAdmin::DatabaseHitDuringLoad
  end

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
  
  resources :likes do
    resources :items
  end

  resources :reviews do
    resources :items
  end

  resources :users
  resources :categories
  resources :orders
  resources :line_items
  resources :options
  
  get '/users/:id' => 'users#show'
  put '/users/:id' => 'users#update'
  get '/items/category/:id' => 'items#category_item'
  get '/items/:id/options' => 'options#item_options'
  put '/orders' => 'orders#update'
  get '/orders/list' => 'orders#show'
end
