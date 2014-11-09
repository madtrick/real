Rails.application.routes.draw do
  resources :accounting_entries, only: [:index, :create, :show, :update]

  get '/auth/:provider/callback', to: 'sessions#create'
end
