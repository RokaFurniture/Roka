Rails.application.routes.draw do
  root to: 'application#index'

  namespace :admin do
    root to: '/admin#index'
    resources :users, :colors, :materials, :sizes, :products
  end
end
