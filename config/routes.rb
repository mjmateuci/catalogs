Rails.application.routes.draw do
  root 'catalogs#index'

  resources :products, :catalogs
end
