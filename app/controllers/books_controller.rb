class BooksController < ApplicationController
  def index
    @books = Book.all
  end

  def show
    @book = Book.find(id: params[:id])
  end

  def new
    @book = Book.new
  end

  def create
    @book = Book.new(book_params)
    @book.save #uses the genre_params put into the form at new.html.erb
    if @book.save
      redirect_to books_path ##THIS COULD BE @book
      #if it the genre_params are valid it saves to the genre to db and redirects to the show page for that genre
    else
      render :new #if it the genre_params are not valid it renders the new view for the user try creating a genre
    end
  end

  def edit
    @book = Book.find(params[:id])#uses the inputted genre_id to look for a genre. If it finds one, sets the current genre(@genre) to the genre with that id
  end

  def update
    @book = Book.find(params[:id])
    @book.update(book_params)
      if @book.save
        redirect_to book_path(@book) ##THIS COULD BE @genre
        #uses the inputted genre_id to look for a genre. If it finds one sets the current genre(@genre) to the genre with that id
      else
        renders :edit#allows the user to make changes to the params for the genre (genre_params)
      end
  end

  def destroy
    @book = Book.find(params[:id])#uses the genre_id that was input to set the working genre
    @book.destroy
    #throws up a message letting the user know the genre was deleted
    redirect_to books_path #redirects to the index view (genres_path)
  end

  private
    def book_params
      params.require(:book).permit(
        :title,
        :author
      )
    end
end
