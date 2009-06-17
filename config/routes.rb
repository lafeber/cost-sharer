ActionController::Routing::Routes.draw do |map|
  map.resources :groups
  map.connect '/:name/', :controller => 'groups', :action => 'show'
  map.connect '/:name/edit', :controller => 'groups', :action => 'edit'
  map.root :controller => "groups"
end
