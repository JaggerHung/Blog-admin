Rails.application.routes.draw do


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
    resources :notifications, only: [:index, :destroy]
  end

  match 'dismiss_all_notificaitons', to: 'admin/notifications#delete_all', via: :delete
end
