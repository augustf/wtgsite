class BlockColumnColumnsController < ApplicationController
  # GET /block_columns
  # GET /block_columns.xml
  def index
    @block_columns = BlockColumn.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @block_columns }
    end
  end

  # GET /block_columns/1
  # GET /block_columns/1.xml
  def show
    @block_column = BlockColumn.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @block_column }
    end
  end

  # GET /block_columns/new
  # GET /block_columns/new.xml
  def new
    @block_column = BlockColumn.new
    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @block_column }
    end
  end

  # GET /block_columns/1/edit
  def edit
    @block_column = BlockColumn.find(params[:id])
  end

  # POST /block_columns
  # POST /block_columns.xml
  def create
    @block_column = BlockColumn.new(params[:block_column])
    respond_to do |format|
      if @block_column.save
        format.html { redirect_to(@block_column, :notice => 'Blog post was successfully created.') }
        format.xml  { render :xml => @block_column, :status => :created, :location => @block_column }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @block_column.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /block_columns/1
  # PUT /block_columns/1.xml
  def update
    @block_column = BlockColumn.find(params[:id])

    respond_to do |format|
      if @block_column.update_attributes(params[:block_column])
        format.html { redirect_to(@block_column, :notice => 'Blog post was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @block_column.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /block_columns/1
  # DELETE /block_columns/1.xml
  def destroy
    @block_column = BlockColumn.find(params[:id])
    @block_column.destroy

    respond_to do |format|
      format.html { redirect_to(block_columns_url) }
      format.xml  { head :ok }
    end
  end
end
