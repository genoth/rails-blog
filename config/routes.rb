Rails.application.routes.draw do
  get 'welcome/index'

  resources :articles do
    resources :comments
  end


  root 'welcome#index'

  get '/signup' => 'users#new'
  post '/users' => 'users#create'
  get '/logout' => 'sessions#destroy'

  get '/users/new' => 'users#new'
  post '/users' => 'users#create'
  # this tells Rails to map requests to http://localhost:3000/welcome/index to the welcome controller's index action

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
