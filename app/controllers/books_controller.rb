class BooksController < ApplicationController
  def index
    @books = Book.all
  end

  def show
    @book = Book.find(params[:id])
  end

  def new
  end

  def create
    #uses the book_params put into the form at new.html.erb
    #if the book_params are valid it saves to the book to db and redirects to the show page for that book
    #if it the book_params are not valid it renders the new view for the user try creating a book
  end

  def edit
    #uses the inputted book_id to look for a book. If it finds one, sets the current book(@book) to the book with that id
  end

  def update
    #uses the inputted book_id to look for a book. If it finds one sets the current book(@book) to the book with that id
    #allows the user to make changes to the params for the book(book_params)
  end

  def destroy
    #uses the book_id that was input to set the working book
    #@book.destroy
    #throws up a message letting the user know the book was deleted
    #redirects to the index view (books_path)
  end
end
