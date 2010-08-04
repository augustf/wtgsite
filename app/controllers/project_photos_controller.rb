class ProjectPhotosController < ApplicationController
	layout "page"
	
  # GET /project_photos/new
  # GET /project_photos/new.xml
  def new
    @project_photo = ProjectPhoto.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @project_photo }
    end
  end

  # POST /project_photos
  # POST /project_photos.xml
  def create
    @project_photo = ProjectPhoto.new(params[:project_photo])

    respond_to do |format|
      if @project_photo.save
        format.html { redirect_to(@project_photo, :notice => 'Project photo was successfully created.') }
        format.xml  { render :xml => @project_photo, :status => :created, :location => @project_photo }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @project_photo.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /project_photos/1
  # DELETE /project_photos/1.xml
  def destroy
    @project_photo = ProjectPhoto.find(params[:id])
    @project_photo.destroy

    respond_to do |format|
      format.html { redirect_to(project_photos_url) }
      format.xml  { head :ok }
    end
  end

end
