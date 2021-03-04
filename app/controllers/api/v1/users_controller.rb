class Api::V1::UsersController < ApplicationController
  def index
    @users = User.all
  end

  def show

  end

  def new
    @user = User.new
  end

  def create
    user = User.create(user_params)

    redirect_to user_path(user)
  end

  def edit

  end

  def update
    @user.update(user_params)

    redirect_to users_path(@user)
  end

  def destroy
    @user.destroy

    redirect_to users_path
  end

  private

  def user_params
    params.require(:user).permit(:name, :email)
  end
end
