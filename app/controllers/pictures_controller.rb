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
  
  # HINT: MODIFY THIS METHOD TO USE
  # Picture.all INSTEAD OF 
  # CALLING THE all_pictures METHOD.
  # (Don't let Raghu see this hint)
  
  def index
    @pictures = Picture.all
    # new_url = params["url"]
    # new_note = params["caption"]
    # p = Picture.new
    # p.url = new_url
    # p.note = new_note
    # @pictures.push(p)
  end
  
  def show
    pic_id = params["id"].to_i
    @picture = Picture.find_by_id(pic_id)
    
    if @picture == nil
      redirect_to "http://localhost:3000/pictures"
      return
    end
    
    @bgcolor = params["color"]
  end
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
end