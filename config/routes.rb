Rails.application.routes.draw do
  mount CmAdmin::Engine => '/admin'
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ('/')
  root 'home#index'

  post '/webhooks/process/:webhook_source', controller: :webhooks, action: :process
end
