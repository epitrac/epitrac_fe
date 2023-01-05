Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'landing#index'
  get '/login', to: "users#login_form"
  post '/login', to: "users#login_user"
  get '/about', to: "abouts#index"
  resources :users
end
