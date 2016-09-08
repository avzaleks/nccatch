Refinery::Core::Engine.routes.draw do

  # Frontend routes
  namespace :what_cooking_blocks do
    resources :what_cooking_blocks, :path => '', :only => [:index, :show]
  end

  # Admin routes
  namespace :what_cooking_blocks, :path => '' do
    namespace :admin, :path => Refinery::Core.backend_route do
      resources :what_cooking_blocks, :except => :show do
        collection do
          post :update_positions
        end
      end
    end
  end

end
