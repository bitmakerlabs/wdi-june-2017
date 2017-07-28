class UsersController < ApplicationController

  before_action :find_user, only: %i(edit update)

  def new
    @user = User.new
  end

  def create
    @user = User.new(params[:user])

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
    unless @user
      flash[:error] = 'You must be logged in to do that!'
      redirect_to root_url
    end
  end

  def update
    unless @user
      flash[:error] = 'You must be logged in to do that!'
      redirect_to root_url and return
    end

    @user.assign_attributes(params[:user])

    if @user.save
      flash[:notice] = 'Account successfully updated!'
      redirect_to root_url
    else
      flash.now[:error] = 'Sorry, try again!'
      render :edit
    end

  end

private

  def find_user
    @user = current_user
  end

end
