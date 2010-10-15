class PagesController < ApplicationController
  respond_to :html, :xml, :json
    
  # GET /pages
  # GET /pages.xml
  def index
    @pages = Page.all
    respond_with(@pages)
  end

  # GET /pages/1
  # GET /pages/1.xml
  def show
    @page = Page.find(params[:id])
    @columns = @page.columns
    respond_with(@page)
  end

  # GET /pages/new
  # GET /pages/new.xml
  def new
    @page = Page.new
    respond_with(@page)
  end

  # GET /pages/1/edit
  def edit
    @page = Page.find(params[:id])
  end

  # POST /pages
  # POST /pages.xml
  def create
    @page = Page.new(params[:page])
    flash[:notice] = "Page successfully created" if @page.save
    respond_with(@page)
  end

  # PUT /pages/1
  # PUT /pages/1.xml
  def update
    @page = Page.find(params[:id])
    @page.update_attributes(params[:page])
    respond_with(@page)
  end

  # DELETE /pages/1
  # DELETE /pages/1.xml
  def destroy
    @page = Page.find(params[:id]).destroy
    respond_with(@page)
  end
end
