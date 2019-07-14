Rails.application.routes.draw do
  get 'events', to: 'events#index'
  get 'entities/:id', to: 'entities#show'
  get 'events/:id', to: 'events#show'
  post 'entities', to: 'entities#create'
  post 'login', to: 'entities#login'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
