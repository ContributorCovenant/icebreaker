Rails.application.routes.draw do
  mount Sidekiq::Web => '/sidekiq'

  resources :projects, only: [:index, :show]

  root "home#show"
end
