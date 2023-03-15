Rails.application.routes.draw do
  resources :greetings
  resources :contacts, only: [:new, :create ]
  get '/contacts', to: 'contacts#new', as: 'contact'
  get 'contacts/sent'

  get 'static_pages/home'
  get 'market_share_by_makemodel' => 'static_pages#market_share_by_makemodel'
  get 'market_share_by_makemodel_overtime' => 'static_pages#market_share_by_makemodel_overtime'
  get 'market_share_by_fueltype_overtime' => 'static_pages#market_share_by_fueltype_overtime'
  get 'market_share_by_price_overtime' => 'static_pages#market_share_by_price_overtime'
  get 'contact' => 'static_pages#contact'
  

  root 'static_pages#home'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
