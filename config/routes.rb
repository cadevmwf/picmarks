Picmarks::Application.routes.draw do
   
  get '/pictures' => "Pictures#index", :as => :pictures
  
  # def pictures_url
  #   return "http://localhost:3000/pictures"
  # end
  # def pictures_path
  #   return "/pictures"
  # end
  
  get '/pictures/new' => 'Pictures#new', :as => :new_picture
  
  # def new_picture_url
  #   return "http://localhost:3000/pictures/new"
  # end
  # def new_picture_path
  #   return "/pictures/new"
  # end
  
  
  post '/pictures' => 'Pictures#create', :as => :pictures
  
  get '/pictures/:id' => 'Pictures#show', :as => :picture
  
  # def picture_url(zebra)
  #   return "http://localhost:3000/pictures/#{zebra}"
  # end
  # 
  # def picture_path(zebra)
  #   return "/pictures/#{zebra}"
  # end  
  
  delete '/pictures/:id' => "Pictures#destroy"
  put '/pictures/:id' => "Pictures#update"
  
  get '/pictures/:id/edit' => 'Pictures#edit', :as => :edit_picture
end
