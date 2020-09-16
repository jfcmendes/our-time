Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :chatrooms, only: [:index, :show] do
    resources :messages, only: :create
  end

  resources :bookings, only: [:show] do
    resources :reviews, only: [:new, :create]
    resources :chatrooms, only: :create
  end

  resources :teachers, only: [:index, :show, :new, :create, :edit, :update] do
    resources :teacher_availabilities, only: [:new, :create]
    resources :bookings, only: [:new, :create]
  end

  resources :orders, only: [:show, :create] do
    resources :payments, only: :new
  end

  resources :orders, only: [:show, :create]

  resources :bookings, only: :show

  resources :reviews, only: :destroy

  resources :teacher_availabilities, only: :destroy

  resources :users, only: :show

  namespace :user do
    resources :bookings, only: :index
  end

  namespace :teacher, as: :t do
    resources :bookings, only: :index
  end
end
