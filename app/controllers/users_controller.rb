class UsersController < ApplicationController
  def new
    @user = User.find(params[:id])
  end

  def create
    user = User.new(user_params).save
  end

  private

  def user_params
    params.require(:user).permit(:name, :password, :password_confirmation)
  end
end
