Rails.application.routes.draw do
  root               'pages#about'
  get 'resources' => 'pages#resources'
end
