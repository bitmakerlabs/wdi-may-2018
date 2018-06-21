Rails.application.routes.draw do

  resources :products, only: :index
  resource  :users, only: %i(new create)

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
