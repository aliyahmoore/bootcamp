Rails.application.routes.draw do
  # Root route
  root "articles#index"
  #root "category#index"

  # Categories routes
  resources :categories
  
  # Articles routes
  resources :articles do
    resources :comments, only: [:create, :destroy]
  end

  # Donations routes
  resources :donations, only: [:new, :create]

  # Health check route
  get "up", to: "rails/health#show", as: :rails_health_check

  # PWA-related routes
  get "service-worker", to: "rails/pwa#service_worker", as: :pwa_service_worker
  get "manifest", to: "rails/pwa#manifest", as: :pwa_manifest
end
