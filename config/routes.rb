Rails.application.routes.draw do
  root 'users#home'
  get '/create', to: 'users#new', as: 'create'
  post '/create', to: 'users#create'
  get '/login', to: 'users#login', as: 'login'
  post '/login', to: 'users#authenticate'
  
  resources :users  # Add this line
end
