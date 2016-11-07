class DirectorsController < ApplicationController

def index
  @director= Director.all
end

def show
  @director=Director.find_by({ :id=>params[:id]})
end

def new_row
  @director = Director.find_by({ :id=>params[:id]})
end

def create_row
  d= Director.new
  d.dob=params[:dob]
  d.name=params[:name]
  d.bio=params[:bio]
  d.image_url=params[:image_url]
  d.save
  @director = Director.find_by({ :id=>params[:id]})

redirect_to("http://localhost:3000/directors")


end

def edit_row
    @director = Director.find_by({ :id=>params[:id]})

end

def update_row
  @director = Director.find_by({ :id=>params[:id]})
  @director.dob=params[:dob]
  @director.name=params[:name]
  @director.bio=params[:bio]
  @director.image_url=params[:image_url]
  @director.save


redirect_to("http://localhost:3000/directors")
end



def destroy
@director =  Director.find_by({ :id=>params[:id]})
@director.destroy
@director.save


end

end
