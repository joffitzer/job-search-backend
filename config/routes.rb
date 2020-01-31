Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :user_apps
    end
  end
  namespace :api do
    namespace :v1 do
      resources :portfolio_items
    end
  end
  namespace :api do
    namespace :v1 do
      resources :users
    end
  end
  namespace :api do
    namespace :v1 do
      resources :jobs
    end
  end
  namespace :api do
    namespace :v1 do
      resources :employers
    end
  end
end
