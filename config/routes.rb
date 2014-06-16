Rails.application.routes.draw do
  resources :answers [:index, :show]
  resources :questions [:index, :show]
  resources :users [:index, :show]
end
