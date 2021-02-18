Rails.application.routes.draw do
  devise_for :users
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
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

  #get 'pages/index' => 'pages#index', as: :index
end
