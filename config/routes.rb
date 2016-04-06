Rails.application.routes.draw do
  namespace :api do
    namespace :v2 do
      resource :ping
      resources :employers
      resources :events
      resources :jobs
      resources :shifts
    end
  end
end
