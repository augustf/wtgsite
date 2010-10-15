class UsersController < ApplicationController
  respond_to :html, :xml, :json
  before_filter :require_no_user, :only => [:new, :create, :index]
  before_filter :require_user, :only => [:show, :edit, :update, :destroy]
  
  # GET /users
  # GET /users.xml
  def index
		@users = User.order('name ASC').all
    respond_with(@users)
  end

  # GET /users/1
  # GET /users/1.xml
  def show
    @user = User.find(params[:id])
    respond_with(@user)
  end

  # GET /users/new
  # GET /users/new.xml
  def new
    @user = User.new
    respond_with(@user)
  end

  # GET /users/1/edit
  def edit
    @user = current_user
  end

  # POST /users
  # POST /users.xml
  def create
    @user = User.new(params[:user])
    flash[:notice] = "User successfully created" if @user.save
    respond_with(@user)
  end

  # PUT /users/1
  # PUT /users/1.xml
  def update
    @user = current_user
    @user.update_attributes(params[:user])
    respond_with(@user)
  end

  # DELETE /users/1
  # DELETE /users/1.xml
  def destroy
    @user = User.find(params[:id]).destroy
    respond_with(@user)
  end
end
