Rails.application.routes.draw do
  scope module: :v1 do
    resources :articles, only: :index
  end
end
