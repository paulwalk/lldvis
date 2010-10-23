class UsagesController < ApplicationController
  # GET /usages
  # GET /usages.xml
  def index
    @usages = Usage.all
    @table_title = "All Usages of vocabularies"
    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @usages }
    end
  end

  # GET /usages/1
  # GET /usages/1.xml
  def show
    @usage = Usage.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @usage }
    end
  end

  # GET /usages/new
  # GET /usages/new.xml
  def new
    @usage = Usage.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @usage }
    end
  end

  # GET /usages/1/edit
  def edit
    @usage = Usage.find(params[:id])
  end

  # POST /usages
  # POST /usages.xml
  def create
    @usage = Usage.new(params[:usage])

    respond_to do |format|
      if @usage.save
        format.html { redirect_to(@usage, :notice => 'Usage was successfully created.') }
        format.xml  { render :xml => @usage, :status => :created, :location => @usage }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @usage.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /usages/1
  # PUT /usages/1.xml
  def update
    @usage = Usage.find(params[:id])

    respond_to do |format|
      if @usage.update_attributes(params[:usage])
        format.html { redirect_to(@usage, :notice => 'Usage was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @usage.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /usages/1
  # DELETE /usages/1.xml
  def destroy
    @usage = Usage.find(params[:id])
    @usage.destroy

    respond_to do |format|
      format.html { redirect_to(usages_url) }
      format.xml  { head :ok }
    end
  end
end
