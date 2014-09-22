Rails.application.routes.draw do
  resources :accounting_entries, only: [:index, :create, :show]
end
