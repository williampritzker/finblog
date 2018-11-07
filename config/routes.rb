Rails.application.routes.draw do

  namespace :api do
    post "/users" => 'users#create'
    get "/users/:id" => 'users#show'
    delete "/users/:id" => 'users#destroy'
    post "/sessions" => "sessions#create"
    patch "/users/:id" => 'users#update'

    post "/articles" => 'articles#create'
    get "/articles/:id" => 'articles#show'
    patch "/articles/:id" => 'articles#update'
    delete "/articles/:id" => 'articles#destroy'

    get "/subpages/:id" => 'subpages#show'
    get "/subpages/" => 'subpages#index'

    get "/pages/:id" => 'pages#show'

    get "/tags/:id" => 'tags#show'
    get "/tags/" => 'tags#index'
  end
  
end