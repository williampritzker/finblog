Rails.application.routes.draw do

  namespace :api do
    post "/users" => 'users#create'
    get "/users/:id" => 'users#show'
    delete "/users/:id" => 'users#destroy'
    post "/sessions" => "sessions#create"

    post "/articles" => 'articles#create'
    get "/articles/:id" => 'articles#show'
    delete "/articles/:id" => 'articles#destroy'

    get "/subpages/:id" => 'subpages#show'

    get "/pages/:id" => 'pages#show'

    get "/tags/:id" => 'tags#show'
  end
  
end