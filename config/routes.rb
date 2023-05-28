Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "articles#index" # Homepage. This will point to the index action of the ArticlesController

  # This will generate all the routes for the ArticlesController
  resources :articles do
    # This will generate all the routes for the CommentsController
    # Sub route under articles
    resources :comments
  end
end