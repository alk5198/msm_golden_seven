Rails.application.routes.draw do

get("/", { :controller => "movies", :action => "index" })


get("/movies/:id/edit",           { :controller => "movies", :action => "edit_form" })
get("/movies/new_form",           { :controller => "movies", :action => "new_form" })
get("/create_movie",           { :controller => "movies", :action => "create_row" })
get("/update_movie/:id",           { :controller => "movies", :action => "update_form" })
get("/delete_movie/:id",           { :controller => "movies", :action => "destroy" })

# Routes to READ movies
get("/movies",           { :controller => "movies", :action => "index" })
get("/movies/:id",       { :controller => "movies", :action => "show" })


# Directors

##Create
get("/directors/new_form",           { :controller => "directors", :action => "new_row" })
get("/create_director",           { :controller => "directors", :action => "create_row" })

#READ

get("/directors",           { :controller => "directors", :action => "index" })
get("/directors/:id",           { :controller => "directors", :action => "show" })

#update
get("/directors/:id/edit_director",           { :controller => "directors", :action => "edit_row" })
get("/update_director/:id",           { :controller => "directors", :action => "update_row" })


##D
# get("/delete_director",           { :controller => "directors", :action => "destroy" })
get("/delete_director/:id",           { :controller => "directors", :action => "destroy" })



##D
# get("/delete_director",           { :controller => "directors", :action => "destroy" })
get("/actors/",           { :controller => "actors", :action => "index" })
get("/actors/:id",           { :controller => "actors", :action => "show" })
get("/actors/edit_actor/:id",           { :controller => "actors", :action => "edit_row" })
get("/update_actor/:id",           { :controller => "actors", :action => "update_row" })
get("/actors/:id/delete_actor",           { :controller => "actors", :action => "delete_row" })
get("/actors/new_form",           { :controller => "actors", :action => "new_row" })
get("/new_actor",           { :controller => "actors", :action => "new_row" })
get("/create_actor",           { :controller => "actors", :action => "create_row" })


end
