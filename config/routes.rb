Rails.application.routes.draw do
  resources :varietals
  resources :blends
  resources :appellations
  resources :wine_regions
  resources :countries
  resources :reviews
  resources :wines
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
