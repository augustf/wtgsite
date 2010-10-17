class BlogCategoriesController < ApplicationController
  respond_to :html, :xml, :json
  
  # GET /blog_categories
  # GET /blog_categories.xml
  def index
    @blog_categories = BlogCategory.all
    respond_with(@blog_categories)
  end

  # GET /blog_categories/1
  # GET /blog_categories/1.xml
  def show
    @blog_category = BlogCategory.find(params[:id])
    respond_with(@blog_category)
  end

  # GET /blog_categories/new
  # GET /blog_categories/new.xml
  def new
    @blog_category = BlogCategory.new
    respond_with(@blog_category)
  end

  # GET /blog_categories/1/edit
  def edit
    @blog_category = BlogCategory.find(params[:id])
  end

  # POST /blog_categories
  # POST /blog_categories.xml
  def create
    @blog_category = BlogCategory.new(params[:blog_category])
    flash[:notice] = "Blog Category successfully created" if @blog_category.save
    redirect_to(blog_posts_path)
  end

  # PUT /blog_categories/1
  # PUT /blog_categories/1.xml
  def update
    @blog_category = BlogCategory.find(params[:id])
    @blog_category.update_attributes(params[:blog_category])
    redirect_to(blog_posts_path)
  end

  # DELETE /blog_categories/1
  # DELETE /blog_categories/1.xml
  def destroy
    @blog_category = BlogCategory.find(params[:id]).destroy
    redirect_to(blog_posts_path)
  end
end
