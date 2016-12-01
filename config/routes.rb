Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :books, only: [:create, :show, :index]
  get '/books/slug/:slug', to: 'books#find_by_slug'

  resources :categories, only: [:create, :show, :index]
  get '/categories/slug/:slug', to: 'categories#find_by_slug'
end
