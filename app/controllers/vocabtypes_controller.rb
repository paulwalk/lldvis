class VocabtypesController < ApplicationController
  # GET /vocabtypes
  # GET /vocabtypes.xml
  def index
    @vocabtypes = Vocabtype.all
    @table_title = "All Vocabulary types"
    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @vocabtypes }
    end
  end

  # GET /vocabtypes/1
  # GET /vocabtypes/1.xml
  def show
    @vocabtype = Vocabtype.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @vocabtype }
    end
  end

  # GET /vocabtypes/new
  # GET /vocabtypes/new.xml
  def new
    @vocabtype = Vocabtype.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @vocabtype }
    end
  end

  # GET /vocabtypes/1/edit
  def edit
    @vocabtype = Vocabtype.find(params[:id])
  end

  # POST /vocabtypes
  # POST /vocabtypes.xml
  def create
    @vocabtype = Vocabtype.new(params[:vocabtype])

    respond_to do |format|
      if @vocabtype.save
        format.html { redirect_to(@vocabtype, :notice => 'Vocabtype was successfully created.') }
        format.xml  { render :xml => @vocabtype, :status => :created, :location => @vocabtype }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @vocabtype.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /vocabtypes/1
  # PUT /vocabtypes/1.xml
  def update
    @vocabtype = Vocabtype.find(params[:id])

    respond_to do |format|
      if @vocabtype.update_attributes(params[:vocabtype])
        format.html { redirect_to(@vocabtype, :notice => 'Vocabtype was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @vocabtype.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /vocabtypes/1
  # DELETE /vocabtypes/1.xml
  def destroy
    @vocabtype = Vocabtype.find(params[:id])
    @vocabtype.destroy

    respond_to do |format|
      format.html { redirect_to(vocabtypes_url) }
      format.xml  { head :ok }
    end
  end
end
