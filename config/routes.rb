Rails.application.routes.draw do
  root to: 'welcome#index'
  # get '/nova-traducao', to: 'translations#nova'
  resources :translations, only: [:show, :new, :create, :edit, :update]
end

