Rails.application.routes.draw do
  get("/", { :controller => "places", :action => "index" })
  resources "entries"
  resources "places"
  resources "users"

  resources "sessions"

  get("/login", { :controller => "sessions", :action => "new" })
  get("/login", { :controller => "sessions", :action => "destroy" })


end
