Rails.application.routes.draw do
  resources :pets, only: %i[show]
  root to: 'pets#index'
end
