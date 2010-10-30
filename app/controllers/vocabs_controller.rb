class VocabsController < ApplicationController
  # GET /vocabs
  # GET /vocabs.xml
  def index
    if params[:usecase_id] then
      @vocabs = Usecase.find(params[:usecase_id]).vocabs
      @table_title = "Vocabularies used by usecase: <i>#{Usecase.find(params[:usecase_id]).name}</i>"
    elsif params[:vocabtype_id] then
        @vocabs = Vocabtype.find(params[:vocabtype_id]).vocabs
        @table_title = "Vocabularies classified as: <i>#{Vocabtype.find(params[:vocabtype_id]).name}</i>"
    else
      @vocabs = Vocab.all
      @table_title = "All Vocabularies"
    end
    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @vocabs }
      format.rss
    end
  end

  # GET /vocabs/1
  # GET /vocabs/1.xml
  def show
    @vocab = Vocab.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @vocab }
    end
  end

  # GET /vocabs/new
  # GET /vocabs/new.xml
  def new
    @vocab = Vocab.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @vocab }
    end
  end

  # GET /vocabs/1/edit
  def edit
    @vocab = Vocab.find(params[:id])
  end

  # POST /vocabs
  # POST /vocabs.xml
  def create
    @vocab = Vocab.new(params[:vocab])

    respond_to do |format|
      if @vocab.save
        format.html { redirect_to(@vocab, :notice => 'Vocab was successfully created.') }
        format.xml  { render :xml => @vocab, :status => :created, :location => @vocab }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @vocab.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /vocabs/1
  # PUT /vocabs/1.xml
  def update
    @vocab = Vocab.find(params[:id])

    respond_to do |format|
      if @vocab.update_attributes(params[:vocab])
        format.html { redirect_to(@vocab, :notice => 'Vocab was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @vocab.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /vocabs/1
  # DELETE /vocabs/1.xml
  def destroy
    @vocab = Vocab.find(params[:id])
    @vocab.destroy

    respond_to do |format|
      format.html { redirect_to(vocabs_url) }
      format.xml  { head :ok }
    end
  end
end
