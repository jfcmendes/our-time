Rails.application.routes.draw do

  devise_for :users
  root to: 'pages#home'

<<<<<<< HEAD
  resources :chatrooms, only: [:index, :show] do
    resources :messages, only: :create
  end
=======
  resources :users, only: :show

  resources :teachers
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
>>>>>>> 50ee774bc8745f35a5442126039550b4fef52ca1
end
