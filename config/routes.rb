Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :tweets
  get 'tweets/?handle=:handle&number=:number', to: 'tweets#index'
end
