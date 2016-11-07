class ActorsController < ApplicationController

def index
@actor = Actor.all

end

def show
@actor = Actor.find_by({ :id=>params[:id]})

end

def edit_row
  @actor = Actor.find_by({ :id=>params[:id]})
end

def update_row
  @actor = Actor.find_by({ :id=>params[:id]})
  @actor.dob =params[:dob]
  @actor.name =params[:name]
  @actor.bio =params[:bio]
  @actor.image_url =params[:image_url]
  @actor.save


  redirect_to("http://localhost:3000/actors")


end

def delete_row
    @actor = Actor.find_by({ :id=>params[:id]})
    @actor.destroy
    @actor.save
end

def new_row
end

def  create_row
  @actor = Actor.new
  @actor.dob =params[:dob]
  @actor.name =params[:name]
  @actor.bio =params[:bio]
  @actor.image_url =params[:image_url]
  @actor.save
  @actor.save 

  redirect_to("http://localhost:3000/actors")

end


end
