Rails.application.routes.draw do
  get 'bookings/create'
  get 'bookings/new'
  get 'bookings/index'
  get 'bookings/edit'
  get 'bookings/update'
  devise_for :users
  root to: 'pages#home'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
