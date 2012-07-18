Picmarks::Application.routes.draw do
   
  get '/pictures' => "Pictures#index"
  
  get '/pictures/new' => 'Pictures#new'
  post '/pictures' => 'Pictures#create'
  
  get '/pictures/:id' => 'Pictures#show'
  
  get '/pictures/:id/edit' => 'Pictures#edit'
  put '/pictures/:id' => "Pictures#update"
  delete '/pictures/:id' => "Pictures#destroy"
end
