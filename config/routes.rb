Rails.application.routes.draw do
  get 'user/show'
  get 'comment/create'
  devise_for :users
  root to: "prototypes#index"
  resources :prototypes, only: [:new, :create, :show, :edit, :update, :destroy] do
    resources :comment, only: :create
  end
  resources :user, only: :show
end
