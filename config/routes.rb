Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  namespace :api, defaults: { format: :json } do
    resources :foods, only: [:index]
    resources :coupons, only: %i[create destroy]
    post '/:food_id/process_order', to: 'orders#create', as: :process_order
  end

  # Defines the root path route ("/")
  # root "articles#index"
end
