Rails.application.routes.draw do
  resources :favorite_artworks
  resources :favorite_exhibitions
  resources :gallery_artworks
  resources :exhibited_artworks
  resources :exhibitions
  resources :artworks
  resources :galleries
  resources :users
  post '/gallery/login', to: 'gallery_auth#create'
  post '/user/login', to: 'user_auth#create'
  get '/explore', to: 'users#explore'
  get '/gallery/profile', to: 'galleries#profile'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
