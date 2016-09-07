Rails.application.routes.draw do
  namespace :api, defaults: {format: :json} do
    resource :user, only: [:create, :update]
    resource :session, only: [:create, :destroy]
    resources :routes, only: [:create, :show, :index, :destroy]
    resources :trips, only: [:create, :show, :index, :destroy]
    resources :friend_taggings, only: [:create, :destroy]
  end

  root "static_pages#root"
end
