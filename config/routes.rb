Rails.application.routes.draw do
  resources :users, only: [:index]
  resources :accounting_entries, only: [:index, :create, :show, :update]
  resources :recurrent_accounting_entries, only: [:index, :create, :show]

  get '/auth/:provider/callback', to: 'sessions#create'
end
