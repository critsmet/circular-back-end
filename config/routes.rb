Rails.application.routes.draw do
  resources :entities, only: [:show, :create]
  get 'events/month', to: 'events#month'
  get 'events/week', to: 'events#week'
  get 'events/day/:day', to: 'events#day'
  resources :events, only: [:show, :create]
  get 'search', to: 'events#search'
  post 'login', to: 'entities#login'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
