Rails.application.routes.draw do

  get("/", { :controller => "directors", :action => "index" })

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

end
