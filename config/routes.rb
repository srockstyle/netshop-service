Rails.application.routes.draw do

  ## オーナー
  devise_for :owners
  resources :owners

  ## ユーザーとショップ
  namespace :user do
    resources :shops
    resources :items
    get 'dashboard', to: 'dashboard#show'
  end

  get 'logout',to: 'pages#owner_after_logout'
  root to: 'pages#index'
end
