Rails.application.routes.draw do
  root "todos#index"

  match "todos/index", :to => "todos#index", :via => :get
  match "todos/create", :to => "todos#create", :via => :post
  get "/delete/:id" => "todos#delete", as: :delete
  match "todos/update/:id", to: "todos#update", via: :get

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
