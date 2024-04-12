class UsersController < ApplicationController
  before_action :set_user, only: [:show]
  
  #get users
  def index
    @users = User.all
    render json: @users
  end

  def show
    render json: @user
  end

  private

  def user_params
    # whitelist params
    params.permit(:username, :email)
  end

  def set_user
    @user = User.find(params[:id])
  end
end
