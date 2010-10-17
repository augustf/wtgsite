class CategoriesController < ApplicationController
  respond_to :html, :xml, :json
  
  # GET /categories
  # GET /categories.xml
  def index
    @categories = Category.all
    respond_with(@categories)
  end

  # GET /categories/1
  # GET /categories/1.xml
  def show
    @category = Category.find(params[:id])
    respond_with(@category)
  end

  # GET /categories/new
  # GET /categories/new.xml
  def new
    @category = Category.new
    respond_with(@category)
  end

  # GET /categories/1/edit
  def edit
    @category = Category.find(params[:id])
  end

  # POST /categories
  # POST /categories.xml
  def create
    @category = Category.new(params[:category])
    flash[:notice] = "Category successfully created" if @category.save
    respond_with(@category)
  end

  # PUT /categories/1
  # PUT /categories/1.xml
  def update
    @category = Category.find(params[:id])
    @category(params[:category])
    respond_with(@category)
  end

  # DELETE /categories/1
  # DELETE /categories/1.xml
  def destroy
    @category = Category.find(params[:id]).destroy
    respond_with(@category)
end
