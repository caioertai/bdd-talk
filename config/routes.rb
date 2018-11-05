Rails.application.routes.draw do
  resources :pets, only: %i[show new create] do
    member do
      get :cuddle
    end
  end
  root to: 'pets#index'
end
