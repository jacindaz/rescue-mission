Rails.application.routes.draw do
  resources :answers, only: [:index, :show, :new, :create]
  resources :questions, only: [:index, :show, :new, :create]
  resources :users, only: [:index, :show, :new, :create]
end
