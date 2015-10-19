Rails.application.routes.draw do
  root to: 'application#index'

  resource :sessions, only: [:new, :create, :destroy]

  get 'login', to: 'sessions#new'
  resources :orders, :customers

  namespace :admin do
    root to: '/admin#index'
    resources :users, :colors, :materials, :sizes, :products
    resources :workers
    resources :product_groups, :product_materials
    resources :products do
      member do
        get 'clone'
      end
    end
  end

  namespace :operator do
    get 'storage', to: 'storage#index'
    resources :inputs, :outputs, :providers
    resources :input_materials, :output_materials
  end
end
