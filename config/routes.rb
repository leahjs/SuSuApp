Rails.application.routes.draw do

  get 'main/home'

  get 'invitations/index'

  get 'invitations/new'

  get 'invitations/create'
  post 'invitations/create'

  get 'invitations/accept'

  get 'invitations/decline'

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

  root to: "main#home"

  get "/auth/splitwise/callback", to:  "sessions#create"
  get "/signout" => "sessions#destroy", :as => :signout
  get "/createpool" => "pools#new", :as => :createpool
  get "/profile" => "users#new", :as => :profile
end
