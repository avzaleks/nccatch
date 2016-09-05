Refinery::Core::Engine.routes.draw do

  # Frontend routes
  namespace :sponsor_in_footers do
    resources :sponsor_in_footers, :path => '', :only => [:index, :show]
  end

  # Admin routes
  namespace :sponsor_in_footers, :path => '' do
    namespace :admin, :path => Refinery::Core.backend_route do
      resources :sponsor_in_footers, :except => :show do
        collection do
          post :update_positions
        end
      end
    end
  end

end
