Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :orders, only: %i[show] do
        namespace :checkout do
          resource :address, only: %i[show create]
          resource :shipping, only: %i[show create]
          resource :payment, only: %i[show create]
        end
      end
    end
  end
end
