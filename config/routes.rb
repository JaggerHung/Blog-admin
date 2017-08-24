Rails.application.routes.draw do


<<<<<<< HEAD
  root to: 'posts#index'

=======
>>>>>>> 2669f3179228394ca7f6d327d06f62ebb82ae199
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
<<<<<<< HEAD
    resources :settings, only: [:new, :create, :edit, :update]
    resources :notifications, only: [:index, :destroy]
    resources :dashboard, only: [:index]
  end

  resources :posts, only: [:index, :show]
  resources :message, only: [:new, :create]
  resources :comments, only: [:create]

=======
    resources :notifications, only: [:index, :destroy]
  end

>>>>>>> 2669f3179228394ca7f6d327d06f62ebb82ae199
  match 'dismiss_all_notificaitons', to: 'admin/notifications#delete_all', via: :delete
end
