Rails.application.routes.draw do
  devise_for :users
  resources :posts
  root  'pages#index' # the '#hash' is a method. the root points to the index method.

  get 'home'  => 'pages#home'

  get '/user/:id' => 'pages#profile'

  get 'explore' => 'pages#explore'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
