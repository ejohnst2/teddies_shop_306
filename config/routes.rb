Rails.application.routes.draw do
  devise_for :users
  root 'teddies#index'

  resources :teddies, only: [:index, :show]

  resources :orders, only: [:show, :create] do
    resources :payments, only: :new
  end
  # /:order_id/payments/new

  mount StripeEvent::Engine, at: '/stripe-webhooks'
end
