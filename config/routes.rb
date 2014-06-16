Rails.application.routes.draw do
  resources :answers, only: [:index, :show, :new]
  resources :questions, only: [:index, :show, :new]
  resources :users, only: [:index, :show, :new]
end
