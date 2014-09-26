Rails.application.routes.draw do
    root 'planets#index'

    resources :planets do
        member do
            get 'copy'
        end
    end
end
