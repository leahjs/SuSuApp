Rails.application.routes.draw do
  resources :pools do
    resources :invitations
  end
  resources :users

  root to: "users#new"
  get "/auth/venmo/callback" => "sessions#create"
  get "/signout" => "sessions#destroy", :as => :signout
end
