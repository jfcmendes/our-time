Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :chatrooms, only: [:index, :show, :new, :create] do
    resources :messages, only: :create
  end
  
  resources :teachers, only: [:index, :show, :new, :create, :edit, :update] do
    resources :teacher_availabilities, only: [:new, :create]
    resources :bookings, only: [:show, :new, :create, :edit, :update] do
      resources :reviews, only: [:new, :create, :edit, :update]
    end
  end

  resources :reviews, only: :destroy

  resources :teacher_availabilities, only: :destroy

  resources :users, only: :show do
    resources :bookings, only: [:index, :destroy]
  end
end
