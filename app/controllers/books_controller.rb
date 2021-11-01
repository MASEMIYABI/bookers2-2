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
    @book = Book.new
  end

  def edit
  end
end
