Rails.application.routes.draw do
  resources :comments
  devise_for :user

  resources :posts do
    resources :comments
  end

  root to: "posts#index"
end
