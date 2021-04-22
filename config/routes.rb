Rails.application.routes.draw do
  resources :action_items
  root to: 'action_items#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
