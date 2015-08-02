Rails.application.routes.draw do
  namespace :admin do
    resources :users, :colors, :materials, :sizes, :products
  end
end
