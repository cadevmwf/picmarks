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
    new_url = params["url"]
    new_note = params["caption"]
    p = Picture.new
    p.url = new_url
    p.note = new_note
    @pictures.push(p)
  end
  
  def show
    pic_id = params["id"].to_i
    @picture = all_pictures[pic_id]
    @bgcolor = params["color"]
  end
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
end