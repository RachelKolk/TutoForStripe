Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'billing#index', as: :billing

  get '/card/new' => 'billing#new_card', as: :add_payment_method

  post '/card' => 'billing#create_card', as: :create_payment_method
end
