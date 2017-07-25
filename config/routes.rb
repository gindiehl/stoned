Rails.application.routes.draw do
  resources :rocks do
    get "page/:page", action: :index, on: :collection
    resources :minerals do
      get "page/:page", action: :index, on: :collection
    end
  end
end
