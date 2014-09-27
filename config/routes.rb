Rails.application.routes.draw do
  resources :accounting_entries, only: [:index, :create, :show]

  get '/auth/:provider/callback', to: 'sessions#create'
end
