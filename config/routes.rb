Rails.application.routes.draw do

  resources :questions do
    resources :answers, only: [:create]
  end

  resources :users, only: [:index, :show, :new, :create]
end
