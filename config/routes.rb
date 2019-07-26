Rails.application.routes.draw do
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
  get 'page/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
