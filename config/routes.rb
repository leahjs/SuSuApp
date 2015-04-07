Rails.application.routes.draw do
  get 'invitations/index'

  get 'invitations/new'

  get 'invitations/create'

  get 'invitations/destroy'

  get 'invitations/edit'

  get 'pools/index'

  get 'pools/new'

  get 'pools/edit'

  get 'pools/show'

  get 'pools/destroy'

  # post 'pools#new', to: "pools#create"

  resources :pools do
    resources :invitations
  end
  resources :users

  root to: "users#new"
  get "/auth/venmo/callback" => "sessions#create"
  get "/signout" => "sessions#destroy", :as => :signout
  get "/createpool" => "pools#new", :as => :createpool
end
