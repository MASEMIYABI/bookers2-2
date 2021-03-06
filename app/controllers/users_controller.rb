class UsersController < ApplicationController
  def index
    @book = Book.new
    @users =User.all
    @user = current_user
  end

  def show
    @user = User.find(params[:id])
    @books = @user.books.all
    @book = Book.new
  end

  def edit
    @user = User.find(params[:id])
    if current_user!= @user
      redirect_to user_path(current_user.id)
    end
  end

  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
      redirect_to user_path(@user.id),notice: 'You have updated user successfully'
    else
       render :edit
    end
  end

  private
  def user_params
    params.require(:user).permit(:name,:introduction,:image_id)
  end
end
