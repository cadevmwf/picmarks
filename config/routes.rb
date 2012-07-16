Picmarks::Application.routes.draw do
  
  get '/pictures', :controller => 'pictures', :action => 'index'
  
  get '/pictures/new' => 'Pictures#new'
  
  get '/pictures/:id' => 'Pictures#show'
  
  
end
