class BlogCommentsController < ApplicationController
  respond_to :html, :xml, :json	
  # GET /blog_comments
  # GET /blog_comments.xml
  def index
    @blog_comments = BlogComment.all
    respond_with(@blog_comments)
  end

  # GET /blog_comments/1
  # GET /blog_comments/1.xml
  def show
    @blog_comment = BlogComment.find(params[:id])
    respond_with(@blog_comment)
  end

  # GET /blog_comments/1/edit
  def edit
    @blog_comment = BlogComment.find(params[:id])
  end

  # POST /blog_comments
  # POST /blog_comments.xml
  def create
    @blog_post = BlogPost.find_by_cached_slug(params[:blog_post_id])
    @blog_comment = @blog_post.blog_comments.new(params[:blog_comment])
    @blog_comment.blog_post_id = @blog_post
		#@blog_comment.user_id = current_user.id #set author of blog post correctly
    flash[:notice] = "Blog Post successfully created" if @blog_comment.save
    respond_with(@blog_post)
  end

  # PUT /blog_comments/1
  # PUT /blog_comments/1.xml
  def update
    @blog_comment = BlogComment.find(params[:id])
    @blog_comment.update_attributes(params[:blog_comment])
    respond_with(@blog_comment)
  end

  # DELETE /blog_comments/1
  # DELETE /blog_comments/1.xml
  def destroy
    @blog_comment = BlogComment.find(params[:id]).destroy
    respond_with(@blog_comment)
  end
end
