Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :users
  resources :books
  resources :genres do
    resources :books, only: [:show, :index, :new]
  end




  root 'static#home'
end
