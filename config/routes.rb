Rails.application.routes.draw do
    root 'planets#index'
    resources :planets
end
