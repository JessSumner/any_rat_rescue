Rails.application.routes.draw do
  root                 'pages#home'
  get 'about'       => 'pages#about'
  get 'contact'     => 'pages#contact'
  get 'volunteer'   => 'pages#volunteer'
  get 'newsletters' => 'pages#newsletters'

  resources :rat_adoptions, only: [:index]
  resources :resources, only: [:index]
end
