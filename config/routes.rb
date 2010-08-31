ActionController::Routing::Routes.draw do |map|
  map.resources :paginas

  map.resources :livros

  map.search '/buscas.:format', :controller => 'livros', :action => 'buscas'

  map.connect ':controller/:action/:id'
  map.connect ':controller/:action/:id.:format'
end

