Refinery::Core::Engine.routes.draw do

  # Frontend routes
  namespace :mails do
    resources :mails, :path => '', :only => [:index, :show]
  end

  # Admin routes
  namespace :mails, :path => '' do
    namespace :admin, :path => Refinery::Core.backend_route do
      resources :mails, :except => :show do
        collection do
          post :update_positions
        end
      end
    end
  end

end
