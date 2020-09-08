class GenresController < ApplicationController
  def index
    @genres = Genre.all
  end

  def show
    @genre = Genre.find(params[:id])
  end

  def new
    @genre = Genre.find(params[:id])
  end

  def create
    #uses the genre_params put into the form at new.html.erb
    #if it the genre_params are valid it saves to the genre to db and redirects to the show page for that genre
    #if it the genre_params are not valid it renders the new view for the user try creating a genre
  end

  def edit
    #uses the inputted genre_id to look for a genre. If it finds one, sets the current genre(@genre) to the genre with that id
  end

  def update
    #uses the inputted genre_id to look for a genre. If it finds one sets the current genre(@genre) to the genre with that id
    #allows the user to make changes to the params for the genre (genre_params)
  end

  def destroy
    #uses the genre_id that was input to set the working genre
    #@genre.destroy
    #throws up a message letting the user know the genre was deleted
    #redirects to the index view (genres_path)
  end
end
