Rails.application.routes.draw do
  resources :bookings
  resources :spaces
  resources :charges

  root 'pages#index'
  get '/login' => 'pages#login'
  get '/signup', to: 'pages#signup'

  devise_for :owners
  devise_for :workers

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
