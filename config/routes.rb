Rails.application.routes.draw do
  resources :articles, only: :index
end
