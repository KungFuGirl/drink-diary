Rails.application.routes.draw do
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
