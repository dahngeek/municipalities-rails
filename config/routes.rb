Rails.application.routes.draw do
  resources :neighborhoods
  resources :municipalities
  resources :mayors
  root :to => "municipalities#index" # mostrar las municipalidades por defecto
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
