Rails.application.routes.draw do
  resources :pets, only: %i[show] do
    member do
      get :cuddle
    end
  end
  root to: 'pets#index'
end
