Rails.application.routes.draw do
  root 'homes#show'
  resources :adoption_applications, only: [:new, :create]
  resources :contact_messages, only: [:new, :create]
  resources :newsletters, only: [:index]
  resources :rat_adoptions, only: [:index]
  resources :resources, only: [:index]
  resources :volunteer_applications, only: [:new, :create]
  resource :donate, only: [:show]
  resource :volunteer, only: [:show]
end
