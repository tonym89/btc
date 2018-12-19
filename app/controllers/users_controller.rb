class UsersController < ApplicationController
  def index
    @users = policy_scope(User)
  end

  def new
  end

  def create
  end

  def show
    @user = User.find(params[:id])
    authorize @user
  end

  def edit
    @user = User.find(params[:id])
    authorize @user
  end

  def update
    @user = User.find(params[:id])
    @user.update(user_params)
    authorize @user
  end

  private

  def user_params
    params.require(:user).permit(:kyc_status)
  end

end
