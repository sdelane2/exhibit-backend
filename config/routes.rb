Rails.application.routes.draw do
  resources :favorite_artworks
  resources :favorite_exhibitions
  resources :exhibited_artworks
  resources :exhibitions
  resources :artworks
  resources :users
  post '/user/login', to: 'user_auth#create'
  get '/explore', to: 'users#explore'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
