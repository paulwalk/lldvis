class UsecaseclustersController < ApplicationController
  # GET /usecaseclusters
  # GET /usecaseclusters.xml
  def index
    @usecaseclusters = Usecasecluster.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @usecaseclusters }
    end
  end

  # GET /usecaseclusters/1
  # GET /usecaseclusters/1.xml
  def show
    @usecasecluster = Usecasecluster.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @usecasecluster }
    end
  end

  # GET /usecaseclusters/new
  # GET /usecaseclusters/new.xml
  def new
    @usecasecluster = Usecasecluster.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @usecasecluster }
    end
  end

  # GET /usecaseclusters/1/edit
  def edit
    @usecasecluster = Usecasecluster.find(params[:id])
  end

  # POST /usecaseclusters
  # POST /usecaseclusters.xml
  def create
    @usecasecluster = Usecasecluster.new(params[:usecasecluster])

    respond_to do |format|
      if @usecasecluster.save
        format.html { redirect_to(@usecasecluster, :notice => 'Usecasecluster was successfully created.') }
        format.xml  { render :xml => @usecasecluster, :status => :created, :location => @usecasecluster }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @usecasecluster.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /usecaseclusters/1
  # PUT /usecaseclusters/1.xml
  def update
    @usecasecluster = Usecasecluster.find(params[:id])

    respond_to do |format|
      if @usecasecluster.update_attributes(params[:usecasecluster])
        format.html { redirect_to(@usecasecluster, :notice => 'Usecasecluster was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @usecasecluster.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /usecaseclusters/1
  # DELETE /usecaseclusters/1.xml
  def destroy
    @usecasecluster = Usecasecluster.find(params[:id])
    @usecasecluster.destroy

    respond_to do |format|
      format.html { redirect_to(usecaseclusters_url) }
      format.xml  { head :ok }
    end
  end
end
