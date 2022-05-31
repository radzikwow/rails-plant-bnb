Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  resources :offers





  # root to: 'pages#home'
  # get "offers", to: "offers#index"
  # get "offers/new", to: "offers#new"
  # post "offers", to: "offers#create"
  # get "offers/:id", to: "offers#show"


  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
