Rails.application.routes.draw do
  root "posts#index"

  get "/pages/about" => "pages#about"
  get "/pages/contact" => "pages#contact"

  resources :posts do
    resources :comments do
    end
  end


  # get "/posts" => "posts#index", as: :posts
  # post "/posts" => "posts#create"
  # get "/posts/new" => "posts#new", as: :new_post
  # get "/posts/:id" => "posts#show", as: :post
  # get "/posts/:id" => "posts#update"
  # get "/post/:id/edit" => "posts#edit", as: :edit_post





end
