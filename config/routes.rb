Rails.application.routes.draw do
  resources :searches
  root 'zone_reqs#index'
  resources :zone_reqs
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
