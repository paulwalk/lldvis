class UsecasesController < ApplicationController
  # GET /usecases
  # GET /usecases.xml
  def index
    if params[:vocab_id] then
      @usecases = Vocab.find(params[:vocab_id]).usecases
      @table_title = "Usecases using the vocab: <i>#{Vocab.find(params[:vocab_id]).name}</i>"
    else
      @usecases = Usecase.all
      @table_title = "All Usecases"
    end

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @usecases }
    end
  end

  # GET /usecases/1
  # GET /usecases/1.xml
  def show
    @usecase = Usecase.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @usecase }
    end
  end

  # GET /usecases/new
  # GET /usecases/new.xml
  def new
    @usecase = Usecase.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @usecase }
    end
  end

  # GET /usecases/1/edit
  def edit
    @usecase = Usecase.find(params[:id])
  end

  # POST /usecases
  # POST /usecases.xml
  def create
    @usecase = Usecase.new(params[:usecase])

    respond_to do |format|
      if @usecase.save
        format.html { redirect_to(@usecase, :notice => 'Usecase was successfully created.') }
        format.xml  { render :xml => @usecase, :status => :created, :location => @usecase }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @usecase.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /usecases/1
  # PUT /usecases/1.xml
  def update
    @usecase = Usecase.find(params[:id])

    respond_to do |format|
      if @usecase.update_attributes(params[:usecase])
        format.html { redirect_to(@usecase, :notice => 'Usecase was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @usecase.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /usecases/1
  # DELETE /usecases/1.xml
  def destroy
    @usecase = Usecase.find(params[:id])
    @usecase.destroy

    respond_to do |format|
      format.html { redirect_to(usecases_url) }
      format.xml  { head :ok }
    end
  end
end
