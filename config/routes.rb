Rails.application.routes.draw do
  resources :answers, only: [:index, :show]
  resources :questions, only: [:index, :show]
  resources :users, only: [:index, :show]
end
