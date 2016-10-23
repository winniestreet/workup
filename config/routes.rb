Rails.application.routes.draw do
  resources :bookings
  resources :spaces
  resources :charges
  post '/thankyou', to: 'charges#create'

  root 'pages#index'
  get '/login' => 'pages#login'
  get '/workersignup', to: 'pages#workersignup'
  get '/ownersignup', to: 'pages#ownersignup'

  devise_for :owners
  devise_for :workers

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
