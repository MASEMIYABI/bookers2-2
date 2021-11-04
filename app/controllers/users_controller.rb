class UsersController < ApplicationController
  def index
    @book = Book.new
    @books =Book.all
    @user = current_user
  end

  def show
  end

  def create
  end

  def new
  end

  def updated
  end
end
