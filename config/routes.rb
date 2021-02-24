Rails.application.routes.draw do
  get 'restaurants', to: 'restaurants#index'

  get 'restaurants/new', to: 'restaurants#new'
  post 'restaurants', to: 'restaurants#create'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
