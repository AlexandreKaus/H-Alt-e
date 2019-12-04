Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :alternatives do
    resources :reviews, only: [:create]
    resources :upvotes, only: :create
    post '/downvote', to: 'upvotes#custom', as: :downvote
  end
  resources :alternatives
end
