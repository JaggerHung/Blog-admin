Rails.application.routes.draw do


  root to: 'posts#index'

  get '/login' => 'admin/sessions#new'
  get '/logout' => 'admin/sessions#destroy'

  namespace :admin do
    resources :posts
    resources :visitors, only: [:index, :destroy]
    resources :comments, only: [:index, :update, :destroy]
    resources :tags, except: [:index]
    resources :sessions, only: [:new, :create, :destroy]
    resources :moderators, only: [:index, :edit, :update]
    resources :messages, only: [:index, :show, :update, :destroy]
    resources :settings, only: [:new, :create, :edit, :update]
    resources :notifications, only: [:index, :destroy]
    resources :dashboard, only: [:index]
  end

  resources :posts, only: [:index, :show]
  resources :message, only: [:new, :create]
  resources :comments, only: [:create]

  match 'dismiss_all_notificaitons', to: 'admin/notifications#delete_all', via: :delete
end
