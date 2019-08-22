Rails.application.routes.draw do
  resources :credit_cards
  resources :products
  resources :charges
  devise_for :users
  root 'welcome#index'

  mount StripeEvent::Engine, at: '/payments'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
