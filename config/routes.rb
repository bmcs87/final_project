Rails.application.routes.draw do
  
  devise_for :views
  devise_for :users
  
  root 'meets#index'
  
  # Routes for the Place resource:
  # CREATE
  get "/places/new", :controller => "places", :action => "new"
  post "/create_place", :controller => "places", :action => "create"

  # READ
  get "/places", :controller => "places", :action => "index"
  get "/places/:id", :controller => "places", :action => "show"

  # UPDATE
  get "/places/:id/edit", :controller => "places", :action => "edit"
  post "/update_place/:id", :controller => "places", :action => "update"

  # DELETE
  get "/delete_place/:id", :controller => "places", :action => "destroy"
  #------------------------------

  # Routes for the Actual_time resource:
  # CREATE
  get "/actual_times/new", :controller => "actual_times", :action => "new"
  post "/create_actual_time", :controller => "actual_times", :action => "create"

  # READ
  get "/actual_times", :controller => "actual_times", :action => "index"
  get "/actual_times/:id", :controller => "actual_times", :action => "show"

  # UPDATE
  get "/actual_times/:id/edit", :controller => "actual_times", :action => "edit"
  post "/update_actual_time/:id", :controller => "actual_times", :action => "update"

  # DELETE
  get "/delete_actual_time/:id", :controller => "actual_times", :action => "destroy"
  #------------------------------

  # Routes for the Goal_time resource:
  # CREATE
  get "/goal_times/new", :controller => "goal_times", :action => "new"
  post "/create_goal_time", :controller => "goal_times", :action => "create"

  # READ
  get "/goal_times", :controller => "goal_times", :action => "index"
  get "/goal_times/:id", :controller => "goal_times", :action => "show"

  # UPDATE
  get "/goal_times/:id/edit", :controller => "goal_times", :action => "edit"
  post "/update_goal_time/:id", :controller => "goal_times", :action => "update"

  # DELETE
  get "/delete_goal_time/:id", :controller => "goal_times", :action => "destroy"
  #------------------------------

  # Routes for the Meet resource:
  # CREATE
  get "/meets/new", :controller => "meets", :action => "new"
  post "/create_meet", :controller => "meets", :action => "create"

  # READ
  get "/meets", :controller => "meets", :action => "index"
  get "/meets/:id", :controller => "meets", :action => "show"

  # UPDATE
  get "/meets/:id/edit", :controller => "meets", :action => "edit"
  post "/update_meet/:id", :controller => "meets", :action => "update"

  # DELETE
  get "/delete_meet/:id", :controller => "meets", :action => "destroy"
  #------------------------------

  # Routes for the User resource
  # READ
  get "/users", :controller => "users", :action => "index"
  get "/users/:id", :controller => "users", :action => "show"

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  mount WebGit::Engine, at: "/rails/git"
end
