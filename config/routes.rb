Rails.application.routes.draw do
  devise_for :users
  root to: 'users#index'
  resources :users do
    member do
      get 'me'
    end
  end

  use_doorkeeper
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
