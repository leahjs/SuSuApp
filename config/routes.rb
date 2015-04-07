Rails.application.routes.draw do
  resources :pools do
    resources :invitations
  end
  resources :users

end
