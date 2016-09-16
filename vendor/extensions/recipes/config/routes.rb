Refinery::Core::Engine.routes.draw do

  # Frontend routes
  namespace :recipes do
    resources :recipes, :path => '', :only => [:index, :show]
  end

  # Admin routes
  namespace :recipes, :path => '' do
    namespace :admin, :path => Refinery::Core.backend_route do
      resources :recipes, :except => :show do
        collection do
          post :update_positions
        end
      end
    end
  end

end
