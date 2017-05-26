Rails.application.routes.draw do
  root to: 'restaurants#index'

  devise_for :users

  resources :restaurants, only: [ :index, :show, :destroy ] do
    resources :reviews, only: [:create]
  end

end
