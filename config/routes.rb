Rails.application.routes.draw do
  resources :rocks do
    get "page/:page", action: :index, on: :collection
    resources :minerals do
      get "page/:page", action: :index, on: :collection
      collection do
        get :random
      end
    end
  end
end
