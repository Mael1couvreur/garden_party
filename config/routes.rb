Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :tasks, only: [:index]
  resources :activities, only: [:create]
  resources :chatrooms, only: [:show, :index] do
    resources :messages, only: :create
  end

  scope module: :garden do
    resources :plants do
      member do
        patch 'upvote'
      end
    end

    get '/communities', to: 'communities#index'
    get '/communities/classement', to: 'communities#classement'
  end
end
