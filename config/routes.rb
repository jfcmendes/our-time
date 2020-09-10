Rails.application.routes.draw do

  devise_for :users
  root to: 'pages#home'

  resources :bookings, only: [:create, :new, :index, :edit, :update] do
      resources :reviews, only: [:new, :create]
  end

  resources :chatrooms, only: [:index, :show, :new, :create] do
    resources :users, only: :show
      resources :messages, only: :create
  end

  resources :users, only: :show
  resources :teachers
end