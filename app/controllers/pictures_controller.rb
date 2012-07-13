class PicturesController < ApplicationController
  def all_pictures
    
    pics = []
    
    ["http://www.w3.org/html/logo/downloads/HTML5_Logo_512.png",
      "http://www.bugtreat.com/blog/wp-content/uploads/2012/06/ruby-on-rails-logo.png"].each do |url|
        p = Picture.new
        p.url = url
        pics.push(p)
    end
        
    return pics
  end
  
  def new
    
  end
  def index
    @pictures = all_pictures
  end
  
  def show
    pic_id = params["id"].to_i
    @picture = all_pictures[pic_id]
    @bgcolor = params["color"]
  end
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
end