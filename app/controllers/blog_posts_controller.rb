class BlogPostsController < ApplicationController
	
  # GET /blog_posts
  # GET /blog_posts.xml
  def index
    @blog_posts = BlogPost.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @blog_posts }
    end
  end

  # GET /blog_posts/1
  # GET /blog_posts/1.xml
  def show
    @blog_post = BlogPost.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @blog_post }
    end
  end

  # GET /blog_posts/new
  # GET /blog_posts/new.xml
  def new
    @blog_post = BlogPost.new
    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @blog_post }
    end
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
    respond_to do |format|
      if @blog_post.save
        format.html { redirect_to(@blog_post, :notice => 'Blog post was successfully created.') }
        format.xml  { render :xml => @blog_post, :status => :created, :location => @blog_post }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @blog_post.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /blog_posts/1
  # PUT /blog_posts/1.xml
  def update
    @blog_post = BlogPost.find(params[:id])

    respond_to do |format|
      if @blog_post.update_attributes(params[:blog_post])
        format.html { redirect_to(@blog_post, :notice => 'Blog post was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @blog_post.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /blog_posts/1
  # DELETE /blog_posts/1.xml
  def destroy
    @blog_post = BlogPost.find(params[:id])
    @blog_post.destroy

    respond_to do |format|
      format.html { redirect_to(blog_posts_url) }
      format.xml  { head :ok }
    end
  end
end
