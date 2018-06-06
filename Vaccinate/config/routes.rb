Rails.application.routes.draw do
  resources :vacinas
  resources :postos
  devise_for :usuarios, :controllers => { :omniauth_callbacks => "callbacks" }
  get 'home/index' => 'home#index'
  root 'home#index'
  resources :usuarios
  get '/postos' => 'postos#index'
  get 'vacinas/' => 'vacinas#show'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
