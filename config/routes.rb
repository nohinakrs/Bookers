Rails.application.routes.draw do
  get 'books/new'
  post 'books' => 'books#create'
  get 'books/index'
  get 'books/show'
  get 'books/edit'
  get '/bookers' => 'homes#bookers'
end
