Rails.application.routes.draw do
    root 'planets#index'

    # get "/planets/askljdas", to: "planets#clone" , as: :hello

    resources :planets do
        member do
            get 'copy'
        end
    end
end


