Rails.application.routes.draw do

  devise_for :users
  root to: "homes#top"
  resources :users, only: [:show, :edit, :update]
  resources :books, only: [:show, :create, :edit, :destroy, :index, :update]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

#rails routes

                                     #user GET    /users/:id(.:format)                                                                              users#show
                                   #books GET    /books(.:format)                                                                                  books#index
                                         #POST   /books(.:format)                                                                                  books#create
                               #edit_book GET    /books/:id/edit(.:format)                                                                         books#edit
                                    #book GET    /books/:id(.:format)                                                                              books#show
                                         #DELETE /books/:id(.:format)                                                                              books#destroy