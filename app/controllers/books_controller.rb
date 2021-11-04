class BooksController < ApplicationController
  def index
    @book = Book.new
    @books =Book.all
    @user = current_user
  end

  def show
  end

  def new
    @book = Book.new
  end

  def create
    @book = Book.new(book_params)
    @book.save
    redirect_to book_path(@book.id)
  end

  def edit
  end
  private
  def book_params
    params.require(:book).permit(:title, :body)
  end
end
