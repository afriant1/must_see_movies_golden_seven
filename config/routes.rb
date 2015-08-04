Rails.application.routes.draw do

  get("/directors", { :controller => "directors", :action => "index" })

  # Routes to CREATE directors
  get("/directors/new", { :controller => "directors", :action => "new_form" })
  get("/create_director", { :controller => "directors", :action => "create_row" })

  # Routes to READ directors
  get("/directors",           { :controller => "directors", :action => "index" })
  get("/directors/:id",       { :controller => "directors", :action => "show" })

  # Route to DELETE directors
  get("/delete_director/:id", { :controller => "directors", :action => "destroy" })

  # Routes to EDIT directors
  get("/directors/:id/edit",           { :controller => "directors", :action => "edit_form" })
  get("/update_director/:id",           { :controller => "directors", :action => "update_row" })

# Routes for Movies
  get("/movies", { :controller => "movies", :action => "index" })

  # Routes to CREATE movies
  get("/movies/new", { :controller => "movies", :action => "new_form" })
  get("/create_movie", { :controller => "movies", :action => "create_row" })

  # Routes to READ movies
  get("/movies",           { :controller => "movies", :action => "index" })
  get("/movies/:id",       { :controller => "movies", :action => "show" })

  # Route to DELETE movies
  get("/delete_movie/:id", { :controller => "movies", :action => "destroy" })

  # Routes to EDIT movies
  get("/movies/:id/edit",           { :controller => "movies", :action => "edit_form" })
  get("/update_movie/:id",           { :controller => "movies", :action => "update_row" })

# Routes for Actors
  get("/actors", { :controller => "actors", :action => "index" })

  # Routes to CREATE actors
  get("/actors/new", { :controller => "actors", :action => "new_form" })
  get("/create_actor", { :controller => "actors", :action => "create_row" })

  # Routes to READ actors
  get("/actors",           { :controller => "actors", :action => "index" })
  get("/actors/:id",       { :controller => "actors", :action => "show" })

  # Route to DELETE actors
  get("/delete_actor/:id", { :controller => "actors", :action => "destroy" })

  # Routes to EDIT actors
  get("/actors/:id/edit",           { :controller => "actors", :action => "edit_form" })
  get("/update_actor/:id",           { :controller => "actors", :action => "update_row" })

end
