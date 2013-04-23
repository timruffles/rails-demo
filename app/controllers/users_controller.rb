class UsersController < ApplicationController

  # GET /users
  def index
    # pass ALL users to view
    @users = User.all()
  end

  # GET /users/new
  def new
    @user = User.new()
  end

  # POST /users
  def create
    @user = User.create(params[:user].slice(:handle))
    if @user.valid?
      redirect_to(@user)
    else
      render(:new)
    end
  end

  # GET /users/:id
  def show
    @user = User.find(params[:id])
  end

  # GET /users/:id/edit
  def edit
  end

  # PUT
  def update
  end

  # DELETE
  def delete
  end

end
