Rails.application.routes.draw do
  devise_for :users
  get 'home/index'
  root :to => 'home#index'
  mount API => '/'

  post 'api/v1/accounts/create'         => 'home#create'
  post 'api/v1/accounts/destroy'        => 'home#destroy'

  post 'api/v1/accounts/sign_in'        => 'home#create_session'
  post 'api/v1/accounts/sign_out'       => 'home#delete_session'
  post 'api/v1/accounts/create_account' => 'home#create_account'
end