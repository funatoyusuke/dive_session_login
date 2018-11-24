Rails.application.routes.draw do
    resources :sessions, only: [:new,:create,:show]
    resources :uesrs
end
