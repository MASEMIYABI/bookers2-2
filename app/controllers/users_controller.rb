class UsersController < ApplicationController
  def index
    @book = Book.new
    @users =User.all
    @user = current_user
  end

  def show
    @books = Book.all
    @user = User.all
  end

  def create
  end

  def new
  end

  def updated
  end
end
