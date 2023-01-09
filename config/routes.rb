Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'landing#index'
  get '/login', to: "users#login_form"
  post '/login', to: "users#login_user"
  get '/about', to: "abouts#index"
  
  get '/dashboard', to: 'users#show'
  delete '/dashboard', to: 'users#destroy'
  patch '/dashboard', to: 'users#update'

  get '/auth/:provider/callback', to: 'sessions#create'
  delete '/sessions', to: 'sessions#destroy'
end
