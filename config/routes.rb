Rails.application.routes.draw do
  # get "restaurants", to: "restaurants#index"
  # get "restaurants/new", to: "restaurants#new"
  # get "restaurants/:id", to: "restaurants#show", as: "bob"
  # post "restaurants", to: "restaurants#create"
  # # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # get "restaurants/:restaurant_id/reviews/new", to: "reviews#new"
  # post "restaurants/:restaurant_id/reviews",    to: "reviews#create"
  # resources :restaurants

    resources :restaurants do
    resources :reviews, only: [ :index, :new, :create ]
  end
end
