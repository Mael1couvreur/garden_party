Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :users, only: [:show] do
    resources :plants, only: [:show] do
      resources :tasks, only: [:index] do
        resources :actions, only: [:create]
      end
    end
  end
  resources :plants, except: [:show]
end
