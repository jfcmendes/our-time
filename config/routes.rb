Rails.application.routes.draw do

  devise_for :users
  root to: 'pages#home'

  resources :chatrooms, only: [:index, :show, :new, :create] do

  resources :users, only: :show
    resources :messages, only: :create
  end

  resources :users, only: :show
  resources :teachers
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
