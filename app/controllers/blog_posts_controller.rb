class BlogPostsController < ApplicationController
  respond_to :html, :xml, :json	
  # GET /blog_posts
  # GET /blog_posts.xml
  def index
    @blog_posts = BlogPost.all
    respond_with(@blog_posts)
  end

  # GET /blog_posts/1
  # GET /blog_posts/1.xml
  def show
    @blog_post = BlogPost.find(params[:id])
    @blog_comments = @blog_post.blog_comments.where(:moderated => 1)
    respond_with(@blog_post)
  end

  # GET /blog_posts/new
  # GET /blog_posts/new.xml
  def new
    @blog_post = BlogPost.new
    respond_with(@blog_post)
  end

  # GET /blog_posts/1/edit
  def edit
    @blog_post = BlogPost.find(params[:id])
  end

  # POST /blog_posts
  # POST /blog_posts.xml
  def create
    @blog_post = BlogPost.new(params[:blog_post])
		@blog_post.user_id = current_user.id #set author of blog post correctly
    flash[:notice] = "Blog Post successfully created" if @blog_post.save
    respond_with(@blog_post)
  end

  # PUT /blog_posts/1
  # PUT /blog_posts/1.xml
  def update
    @blog_post = BlogPost.find(params[:id])
    @blog_post.update_attributes(params[:blog_post])
    respond_with(@blog_post)
  end

  # DELETE /blog_posts/1
  # DELETE /blog_posts/1.xml
  def destroy
    @blog_post = BlogPost.find(params[:id]).destroy
    respond_with(@blog_post)
  end
end
