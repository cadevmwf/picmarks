class PicturesController < ApplicationController
  # Edit/update
  def edit
    @pic = Picture.find_by_id(params[:id])
  end
  
  def destroy
    picture = Picture.find_by_id(params[:id])
    picture.destroy
    redirect_to "http://localhost:3000/pictures"
  end
  
  def update
    pic = Picture.find_by_id(params[:id])
    pic.url = params[:url]
    pic.note = params[:note]
    
    pic.save
    
    redirect_to picture_url(pic.id)
  end
  
  # def picture_url(id)
  #   "http://localhost:3000/pictures/#{id}"
  # end
  
  def new
    @pic = Picture.new
  end
  
  
  # def pictures_url
  #   return "http://localhost:3000/pictures"
  # end
  
  def create
    new_url = params["url"]
    new_note = params["caption"]
    p = Picture.new
    p.url = new_url
    p.note = new_note
    p.save
    redirect_to pictures_url
  end
  
  # Index/show
  def index
    @pictures = Picture.all
  end
  def show
    pic_id = params["id"].to_i
    @picture = Picture.find_by_id(pic_id)
    
    if @picture == nil
      redirect_to "http://localhost:3000/pictures"
      return
    end
    # Leaving in this Easter Egg.
    @bgcolor = params["color"]
  end
end