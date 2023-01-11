Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'landing#index'
  get '/login', to: "users#login_form"
  post '/login', to: "users#login_user"
  get '/about', to: "abouts#index"
  get '/about/:id', to: "abouts#show"
  get '/articles', to: 'articles#index'

  delete '/user_articles/:id', to: 'user_articles#destroy'
  post '/user_articles/:id', to: 'user_articles#create'

  get '/dashboard', to: 'users#show'
  delete '/dashboard', to: 'users#destroy'
  get '/dashboard/edit', to: 'users#edit'
  patch '/dashboard', to: 'users#update'

  get '/auth/:provider/callback', to: 'sessions#create'
  delete '/sessions', to: 'sessions#destroy'
end
