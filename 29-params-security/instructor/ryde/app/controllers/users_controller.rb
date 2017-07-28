class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new

    @user.email = params[:user][:email]
    @user.password = params[:user][:password]
    @user.password_confirmation = params[:user][:password_confirmation]

    if @user.save
      flash[:notice] = 'Account successfully created!'
      redirect_to root_url
    else
      flash.now[:error] = 'Sorry, try again!'
      render :new
    end

    # what_u_doing | what_flash_to_use
    # -------------+--------------------
    # redirect?    | flash
    # render?      | flash.now

  end

  def edit
    @user = current_user

    unless @user
      flash[:error] = 'You must be logged in to do that!'
      redirect_to root_url
    end
  end

  def update
    @user = current_user

    unless @user
      flash[:error] = 'You must be logged in to do that!'
      redirect_to root_url and return
    end

    @user.email                 = params[:user][:email]
    @user.password              = params[:user][:password]
    @user.password_confirmation = params[:user][:password_confirmation]

    if @user.save
      flash[:notice] = 'Account successfully updated!'
      redirect_to root_url
    else
      flash.now[:error] = 'Sorry, try again!'
      render :edit
    end

  end
end
