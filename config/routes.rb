Rails.application.routes.draw do
  resources :test_tables
  resources :fact_quotes
  resources :models
  resources :addresses
  devise_for :users
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  get 'users/sign_in' => 'users#sign_in', as: :sign_in
  get 'users/sign_out' => 'users#sign_out', as: :sign_out
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'pages#index'

  # get 'pages/residential'
  # #root :to => "pages#residential", :id => 'residential'

  # get 'pages/commercial'

  # get 'pages/quotes'

  # root 'pages#index'

  #get 'pages/:residential', to: 'index#residential', as: 'residential'

  get 'pages/residential' => 'pages#residential', as: :residential
  #root :to => "pages#residential", :id => 'residential'

  get 'pages/commercial' => 'pages#commercial', as: :commercial

  get 'pages/quote' => 'pages#quote', as: :quote

  post "pages/quote", to: "quote#create"
  #post 'pages/quote:id', to: 'quote#create', as: 'new_event'
  #post "pages/quote", controller: 'quote', action:create

  #post 'admin', controller: 'admins', action: :create
  #get 'pages/index' => 'pages#index', as: :index
  # devise_for :users, controllers: { registrations: "registrations"}
  # as :user do
  #   get '/' => 'devise/registrations#new'
  # end
  # mount ActionCable.server => "/cable"
  # resources :grid
 

devise_scope :users do  
   get '/users/sign_out' => 'devise/sessions#destroy'     
end
end
