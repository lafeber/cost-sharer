ActionController::Routing::Routes.draw do |map|
  map.resources :transactions
  map.resources :users
  
  map.resource :session
  

  map.resources :groups
  # map.root :controller => "groups"

  map.signup  '/signup', :controller => 'users',   :action => 'new'
  map.login  '/login',  :controller => 'sessions', :action => 'new'
  map.logout '/logout', :controller => 'sessions', :action => 'destroy'

  map.activate '/activate/:activation_code', :controller => 'users', :action => 'activate', :activation_code => nil  
end
