Rails.application.routes.draw do
  # Route for bare domain:
  get('/', { :controller => 'movies', :action => 'index' })

  # Final version of RESTful routes for the Movie resource:
  # CREATE
  get '/movies/new',        :controller => 'movies',
                            :action => 'new',
                            :as => "new_movie"

  post '/movies',           :controller => 'movies',
                            :action => 'create',
                            :as => "movies"

  # READ
  get '/movies',            :controller => 'movies',
                            :action => 'index'

  get '/movies/:id',        :controller => 'movies',
                            :action => 'show',
                            :as => "movie"

  # UPDATE
  get '/movies/:id/edit',   :controller => 'movies',
                            :action => 'edit',
                            :as => "edit_movie"

  patch '/movies/:id',      :controller => 'movies',
                            :action => 'update'

  # DELETE
  delete '/movies/:id',     :controller => 'movies',
                            :action => 'destroy'
  #------------------------------

  # Routes for the Director resource:
  # CREATE
  get('/directors/new_form', { :controller => 'directors', :action => 'new_form' })
  get('/create_director', { :controller => 'director', :action => 'create_row' })

  # READ
  get('/directors', { :controller => 'directors', :action => 'index' })
  get('/directors/:id', { :controller => 'directors', :action => 'show' })

  # UPDATE
  get('/directors/:id/edit_form', { :controller => 'directors', :action => 'edit_form' })
  get('/update_director/:id', { :controller => 'directors', :action => 'update_row' })

  # DELETE
  get('/delete_director/:id', { :controller => 'directors', :action => 'destroy' })
  #------------------------------

  # Routes for the Role resource:
  # CREATE
  get('/roles/new_form', { :controller => 'roles', :action => 'new_form' })
  get('/create_role', { :controller => 'roles', :action => 'create_row' })

  # READ
  get('/roles', { :controller => 'roles', :action => 'index' })
  get('/roles/:id', { :controller => 'roles', :action => 'show' })

  # UPDATE
  get('/roles/:id/edit_form', { :controller => 'roles', :action => 'edit_form' })
  get('/update_role/:id', { :controller => 'roles', :action => 'update_row' })

  # DELETE
  get('/delete_role/:id', { :controller => 'roles', :action => 'destroy' })
  #------------------------------

  # Routes for the Actor resource:
  # CREATE
  get('/actors/new_form', { :controller => 'actors', :action => 'new_form' })
  get('/create_actor', { :controller => 'actors', :action => 'create_row' })

  # READ
  get('/actors', { :controller => 'actors', :action => 'index' })
  get('/actors/:id', { :controller => 'actors', :action => 'show' })

  # UPDATE
  get('/actors/:id/edit_form', { :controller => 'actors', :action => 'edit_form' })
  get('/update_actor/:id', { :controller => 'actors', :action => 'update_row' })

  # DELETE
  get('/delete_actor/:id', { :controller => 'actors', :action => 'destroy' })
  #------------------------------
end
