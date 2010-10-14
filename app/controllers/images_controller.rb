class ImagesController < ApplicationController
  respond_to :html, :xml, :json
  
  # GET /images
  # GET /images.xml
  def index
    @images = Image.all
    respond_with(@images)
  end

  # GET /images/1
  # GET /images/1.xml
  def show
    @image = Image.find(params[:id])
    respond_with(@image)
  end

  # GET /images/new
  # GET /images/new.xml
  def new
    @image = Image.new
    respond_with(@image)
  end

  # GET /images/1/edit
  def edit
    @image = Image.find(params[:id])
  end

  # POST /images
  # POST /images.xml
  def create
    @image = Image.new(params[:image])
    flash[:notice] = "Image successfully created" if @image.save
    respond_with(@image)
  end

  # PUT /images/1
  # PUT /images/1.xml
  def update
    @image = Image.find(params[:id])
    @image.update_attributes(params[:image])
    respond_with(@image)
  end

  # DELETE /images/1
  # DELETE /images/1.xml
  def destroy
    @image = Image.find(params[:id]).destroy
    respond_with(@image)
end
