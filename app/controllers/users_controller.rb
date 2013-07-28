class UsersController < ApplicationController

  before_filter :authenticate,   :only => [:index, :edit, :update, :destroy]
  before_filter :correct_user,   :only => [:edit, :update]
  before_filter :admin_user,     :only => [:index, :destroy]
  before_filter :new_user,      :only => [:new, :create]

  def index
    @title = "All users"
    @users = User.all

    @users = @users.page(params[:page])
  end

  def show
    @user = User.find(params[:id])
    @title = "#{@user.first_name} #{@user.last_name}"
    @trip_list=@user.trips.where(:public=>true)
  end

  def new
    @user = User.new
    @title = "Sign up"
  end

  def create
    @user = User.new(params[:user])
    if @user.save
      sign_in @user
      flash[:success] = "Welcome to Crazytrip!"
      UserMailer.registration_confirmation(@user).deliver
      redirect_to root_path
    else
      @title = "Sign up"
      @user.password = nil
      @user.password_confirmation = nil
      flash.now[:error] = error_message [@user]
      render 'new'
    end
  end

  def edit
    @title = "Edit user settings"
  end

  def update
    if params[:user][:password]=="" && params[:user][:password_confirmation]==""
      params[:user].delete(:password)
      params[:user].delete(:password_confirmation)
    end
    if @user.update_attributes(user_params)
      flash[:success] = "Profile updated."
      redirect_to @user
    else
      @title = "Edit user"
      @user.password = nil
      @user.password_confirmation = nil
      flash.now[:error] = error_message [@user]
      render 'edit'
    end
  end

  def destroy
    User.find(params[:id]).destroy
    flash[:success] = "User destroyed."
    redirect_to users_path
  end

  private

    def correct_user
      @user = User.find(params[:id])
      redirect_to(root_path) unless current_user==@user
    end

    def user_params
      params.require(:user).permit(:first_name, :last_name, :email)
    end

end

