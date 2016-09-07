Refinery::Core::Engine.routes.draw do

  # Frontend routes
  namespace :explore_regional_nc_fishings do
    resources :explore_regional_nc_fishings, :path => '', :only => [:index, :show]
  end

  # Admin routes
  namespace :explore_regional_nc_fishings, :path => '' do
    namespace :admin, :path => Refinery::Core.backend_route do
      resources :explore_regional_nc_fishings, :except => :show do
        collection do
          post :update_positions
        end
      end
    end
  end

end
