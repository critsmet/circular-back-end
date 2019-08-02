Rails.application.routes.draw do
  resources :events, only: [:index, :show]
  resources :entities, only: [:show, :create]
  get 'public_entities/:id', to: 'entities#show_public'
  post 'login', to: 'entities#login'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
