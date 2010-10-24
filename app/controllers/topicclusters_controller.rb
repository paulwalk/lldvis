class TopicclustersController < ApplicationController
  # GET /topicclusters
  # GET /topicclusters.xml
  def index
    @topicclusters = Topiccluster.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @topicclusters }
    end
  end

  # GET /topicclusters/1
  # GET /topicclusters/1.xml
  def show
    @topiccluster = Topiccluster.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @topiccluster }
    end
  end

  # GET /topicclusters/new
  # GET /topicclusters/new.xml
  def new
    @topiccluster = Topiccluster.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @topiccluster }
    end
  end

  # GET /topicclusters/1/edit
  def edit
    @topiccluster = Topiccluster.find(params[:id])
  end

  # POST /topicclusters
  # POST /topicclusters.xml
  def create
    @topiccluster = Topiccluster.new(params[:topiccluster])

    respond_to do |format|
      if @topiccluster.save
        format.html { redirect_to(@topiccluster, :notice => 'Topiccluster was successfully created.') }
        format.xml  { render :xml => @topiccluster, :status => :created, :location => @topiccluster }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @topiccluster.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /topicclusters/1
  # PUT /topicclusters/1.xml
  def update
    @topiccluster = Topiccluster.find(params[:id])

    respond_to do |format|
      if @topiccluster.update_attributes(params[:topiccluster])
        format.html { redirect_to(@topiccluster, :notice => 'Topiccluster was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @topiccluster.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /topicclusters/1
  # DELETE /topicclusters/1.xml
  def destroy
    @topiccluster = Topiccluster.find(params[:id])
    @topiccluster.destroy

    respond_to do |format|
      format.html { redirect_to(topicclusters_url) }
      format.xml  { head :ok }
    end
  end
end
