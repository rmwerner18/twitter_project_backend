Rails.application.routes.draw do
  resources :sessions
  resources :users
  get 'users/?handle=:user_handle', to: 'users#show'
  post 'users/', to: 'users#create'
  put 'users/?handle=:user_handle', to: 'users#update'
  # destroy 'users/?handle=:user_handle', to: 'users#destroy'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :tweets
  get 'tweets/?handle=:handle&number=:number', to: 'tweets#index'
  resources :words
  get 'words/?word=:word', to: 'words#index'
end
