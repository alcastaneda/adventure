Rails.application.routes.draw do

  resources :users

  get '/users/:id/posts' => 'users#my_animaux', as: :my_animaux

  resources :comments
  post '/comments/:id/voteup' => 'comments#voteup'
  post '/comments/:id/votedown' => 'comments#votedown'

  get "/log-in" => "sessions#new"
  post "/log-in" => "sessions#create"
  get "/log-out" => "sessions#destroy", as: :log_out

  resources :posts
  post '/posts/:id/voteup' => 'posts#voteup'
  post '/posts/:id/votedown' => 'posts#votedown'

  resources :replies
  post '/replies/:id/voteup' => 'replies#voteup'
  post '/replies/:id/votedown' => 'replies#votedown'

  resources :tags

  resources :post_tags

  root 'posts#index'
end
