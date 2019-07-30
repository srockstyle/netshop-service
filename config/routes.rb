Rails.application.routes.draw do
  devise_for :owners
  get 'payment/index'
  get 'payment/show'
  get 'payment/create'
  get 'payment/update'
  get 'payment/delete'
  namespace :user do
    get 'shop/index'
    get 'shop/show'
    get 'shop/create'
    get 'shop/update'
    get 'shop/delete'
  end
  namespace :user do
    get 'item/index'
    get 'item/show'
    get 'item/create'
    get 'item/edit'
    get 'item/delete'
  end
  namespace :user do
    get 'dashboard/index'
  end
  get 'logout',to: 'page#owner_after_logout'
  root to: 'page#index'
end
