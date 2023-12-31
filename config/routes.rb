Rails.application.routes.draw do
  namespace :api do
    resources :users, only: [:index, :create, :update, :destroy]
    resources :authors, only: [:index, :create, :update, :destroy]
    resources :works, only: [:index, :create, :update, :destroy]
    resources :blogs, only: [:index, :create, :update, :destroy]
    resources :categories, only: [:index, :create, :update, :destroy]
    resources :exhibition_periods, only: [:index, :create, :update, :destroy]
  end
end
