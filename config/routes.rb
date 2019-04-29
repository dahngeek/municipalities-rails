Rails.application.routes.draw do
  resources :neighborhoods
  resources :municipalities
  resources :mayors
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
