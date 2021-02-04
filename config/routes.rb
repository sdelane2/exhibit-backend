Rails.application.routes.draw do
  resources :gallery_artworks
  resources :exhibited_artworks
  resources :exhibitions
  resources :artworks
  resources :galleries
  post '/login', to: 'auth#create'
  get '/profile', to: 'galleries#profile'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
