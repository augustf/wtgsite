class UsersController < ApplicationController
  respond_to :html, :xml, :json
  before_filter :require_no_user, :only => [:new, :create]
  before_filter :require_user, :only => [:show, :edit, :update, :destroy] 
  before_filter :require_admin, :only => [:index]
  
  # GET /users
  # GET /users.xml
  def index
		@users = User.order('name ASC').all
    respond_with(@users)
  end

  # GET /users/1
  # GET /users/1.xml
  def show
    if params[:id] != current_user.id && current_user.is_admin == false
    	raise "You are not authorized to access this function"
    end
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
    if params[:id] != current_user.id && current_user.is_admin == false
    	raise "You are not authorized to access this function"
    end  
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
    if params[:id] != current_user.id && current_user.is_admin == false
    	raise "You are not authorized to access this function"
    end  
    @user = current_user
    @user.update_attributes(params[:user])
    respond_with(@user)
  end

  # DELETE /users/1
  # DELETE /users/1.xml
  def destroy
    if params[:id] != current_user.id && current_user.is_admin == false
    	raise "You are not authorized to access this function"
    end  
    @user = User.find(params[:id]).destroy
    respond_with(@user)
  end
end
