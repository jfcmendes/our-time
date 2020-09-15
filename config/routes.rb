Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :bookings, only: [:create, :new, :index, :edit, :update, :show] do
      resources :reviews, only: [:new, :create]
  end

  resources :chatrooms, only: [:index, :show, :new, :create] do
    resources :messages, only: :create
  end

  resources :teachers, only: [:index, :show, :new, :create, :edit, :update] do
    resources :teacher_availabilities, only: [:new, :create]
  end

  resources :teacher_availabilities, only: :destroy

  resources :users, only: :show
end
