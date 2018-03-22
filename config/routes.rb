Rails.application.routes.draw do
    namespace :api do
        resources :adventures, except: [:new, :edit]
    end
end
