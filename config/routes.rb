Rails.application.routes.draw do
  get 'welcome/index'

  resources :articles


  root 'welcome#index'
  # this tells Rails to map requests to http://localhost:3000/welcome/index to the welcome controller's index action

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
