Rails.application.routes.draw do
  namespace :api do
    namespace :v2 do
      resource :ping
    end
  end
end
