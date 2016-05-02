class UsersController < ApplicationController
  before_action :authenticate_user!

  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
    unless @user == current_user
      redirect_to :back, :alert => "Access denied."
    end
    @user_censuses = Census.where(user: current_user).paginate(
      page: params[:ended], per_page: 1)
  end
end
