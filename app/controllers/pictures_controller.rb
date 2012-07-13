class PicturesController < ApplicationController
  def all_pictures
    return [
      "http://www.w3.org/html/logo/downloads/HTML5_Logo_512.png",
      "http://farm4.staticflickr.com/3419/3202272106_86e6c38fc8_z.jpg?zz=1",
      "http://www.bugtreat.com/blog/wp-content/uploads/2012/06/ruby-on-rails-logo.png"
      ] 
  end
  
  def index
    @pictures = all_pictures
  end
  
  def show
    pic_id = params["id"].to_i
    @url = all_pictures[pic_id]
    @bgcolor = params["color"]
  end
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
end