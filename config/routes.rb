Rails.application.routes.draw do
  get 'accounting_entries', to: 'accounting_entries#index'
end
