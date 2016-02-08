Rails.application.routes.draw do
  root 'homes#show'
  resources :rat_adoptions, only: [:index]
  resources :resources, only: [:index]
  resources :adoption_applications, only: [:new, :create]
  resources :volunteer_applications, only: [:new, :create]
  resources :newsletters, only: [:index]
  resources :contact_messages, only: [:new, :create]
  resource :volunteer, only: [:show]
  resource :donate, only: [:show]
end
