Rails.application.routes.draw do
  resources :ingredients
  resources :flavors
  resources :notes
  resources :photos
  resources :sodas
  resources :states
  resources :wine_types
  resources :varietals
  resources :blends
  resources :appellations
  resources :wine_regions
  resources :countries
  resources :reviews
  resources :wines
end
