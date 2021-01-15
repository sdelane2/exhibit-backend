Rails.application.routes.draw do
  resources :favorite_artworks
  resources :users
  resources :gallery_artworks
  resources :exhibited_artworks
  resources :exhibitions
  resources :artworks
  resources :galleries
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
