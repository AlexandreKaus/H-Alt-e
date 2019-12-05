Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get 'dashboard', to: 'pages#dashboard'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :alternatives do
    resources :reviews, only: :create
    resources :upvotes, only: :create
    resources :photos, only: [:new, :create]
    post '/downvote', to: 'upvotes#custom', as: :downvote
  end
  get '/alternatives/new/step', to: 'alternatives#step', as: :alternative_step
end
