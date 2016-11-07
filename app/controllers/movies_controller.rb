class MoviesController < ApplicationController
  def index
  @list_of_movies = Movie.all
    end

  def show
  @movie = Movie.find_by({ :id=>params[:id]})
      end

def edit_form
  @movie = Movie.find_by({ :id=>params[:id]})
end

def update_form
  @movie = Movie.find_by({ :id=>params[:id]})
  @movie.title=params[:movie_title]
  @movie.year=params[:movie_year]
  @movie.duration=params[:movie_duration]
  @movie.description=params[:movie_description]
  # @movie.director=params[:movie_director_id]
  @movie.image_url=params[:movie_image_url]
  @movie.save

@movie = Movie.find_by({ :id=>params[:id]})

redirect_to("http://localhost:3000/movies/#{@movie.id}")

end

def destroy
  @movie = Movie.find_by({ :id=>params[:id]})
  @movie.destroy
  @movie.save


end

def new_form
end

def create_row
  @movie=Movie.new
  @movie.title=params[:movie_title]
  @movie.year=params[:movie_year]
  @movie.duration=params[:movie_duration]
  @movie.description=params[:movie_description]
  # @movie.director=params[:movie_director_id]
  @movie.image_url=params[:movie_image_url]

  @movie.save

  redirect_to("http://localhost:3000/movies/#{@movie.id}")


end

  end
