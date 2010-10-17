class ColumnsController < ApplicationController
  respond_to :html, :xml, :json
  before_filter :require_admin, :only => [:new, :edit, :create, :update, :destroy]   
  
  # GET /columns
  # GET /columns.xml
  def index
    @columns = Column.all
    respond_with(@columns)
  end

  # GET /columns/1
  # GET /columns/1.xml
  def show
    @column = Column.find(params[:id])
    respond_with(@column)
  end

  # GET /columns/new
  # GET /columns/new.xml
  def new
    @page = Page.find(params[:page_id]) 
    @column = @page.columns.new
    respond_with(@column)
  end

  # GET /columns/1/edit
  def edit
    @column = Column.find(params[:id])
  end

  # POST /columns
  # POST /columns.xml
  def create
    @page = Page.find(params[:page_id])
    @column = @page.columns.new(params[:column])
    flash[:notice] = "Column successfully created" if @column.save
    respond_with(@page)
  end

  # PUT /columns/1
  # PUT /columns/1.xml
  def update
    @column = Column.find(params[:id])
    @column.update_attributes(params[:column])
    respond_with(@column)
  end

  # DELETE /columns/1
  # DELETE /columns/1.xml
  def destroy
    @column = Column.find(params[:id])
    @page = @column.page
    @column.destroy
    respond_with(@page)
  end
end
