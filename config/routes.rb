Picmarks::Application.routes.draw do
  
  get '/pictures', :controller => 'pictures', :action => 'index'
  
  # http://localhost:3000/pictures/new

  get '/pictures/new' => 'Pictures#new'
  
  get '/pictures/:id' => 'Pictures#show'
  
  
  # get '/pictures' => 'Pictures#index'
  
end
