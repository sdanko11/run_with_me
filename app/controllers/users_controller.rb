class UsersController < ApplicationController
  before_filter :validate_user, :only => :show

  def edit
    @user = current_user
  end

  def index
    @users = User.all
  end

  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
      flash[:saved]="Saved"
      redirect_to  user_path
    else
      render action: 'edit'
    end
  end

  def show
    @user = User.find(params[:id])
    @all_users = User.all
  end

  def validate_user
    redirect_to root_path unless current_user.id.to_s == params[:id]
  end

end