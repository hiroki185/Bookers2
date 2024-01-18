Rails.application.routes.draw do

  devise_for :users
  root to: "homes#top"
  get 'home/about' => 'homes#about', as: 'homes_about'
  resources :users, only: [:show, :edit, :update, :index]
  resources :books, only: [:show, :create, :edit, :destroy, :index, :update]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
#bundle exec rspec spec/ --format documentation
#rails routes
                                   #users GET    /users(.:format)                                                                                  users#index
                               #edit_user GET    /users/:id/edit(.:format)                                                                         users#edit
                                    #user GET    /users/:id(.:format)                                                                              users#show
                                         #PATCH  /users/:id(.:format)                                                                              users#update
                                         #PUT    /users/:id(.:format)                                                                              users#update
                                   #books GET    /books(.:format)                                                                                  books#index
                                         #POST   /books(.:format)                                                                                  books#create
                               #edit_book GET    /books/:id/edit(.:format)                                                                         books#edit
                                    #book GET    /books/:id(.:format)                                                                              books#show
                                         #PATCH  /books/:id(.:format)                                                                              books#update
                                         #PUT    /books/:id(.:format)                                                                              books#update
                                         #DELETE /books/:id(.:format)                                                                              books#destroy