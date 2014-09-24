Rails.application.routes.draw do
  # the root() method...
  # root 'planets#index'
  # is just shorthand for this:
  get '/'           => 'planets#index'

  get 'planets'     => 'planets#index'
  get 'planets/new' => 'planets#new'
  post 'planets'    => 'planets#create'
end
