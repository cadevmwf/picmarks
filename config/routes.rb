Picmarks::Application.routes.draw do
  
  get '/pictures', :controller => 'pictures', :action => 'index'
  post '/pictures', :controller => 'pictures', :action => 'create'
  
  get '/pictures/new' => 'Pictures#new'
  
  get '/pictures/:id' => 'Pictures#show'
  
  
end
