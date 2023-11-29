Rails.application.routes.draw do

  namespace :api do
    namespace :v1 do
      resources :orcamentos, only: [:create, :index] do
        resources :produto_orcamentos, only: [:create, :index]
      end
    end
  end
end
