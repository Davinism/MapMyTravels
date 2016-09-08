Rails.application.routes.draw do
  namespace :api, defaults: {format: :json} do
    resource :user, only: [:create, :update]
    resources :users, only: [:index]
    resource :session, only: [:create, :destroy]
    resources :routes, only: [:create, :show, :index, :destroy, :update]
    resources :trips, only: [:create, :show, :index, :destroy, :update]
    resources :friend_taggings, only: [:create, :destroy]
  end

  get 'api/:id/friends/', :to => 'api/users#friends'
  get 'api/:id/other_users', :to => 'api/users#other_users'
  get 'api/:id/feed_trips', :to => 'api/users#feed_trips'

  root "static_pages#root"
end
