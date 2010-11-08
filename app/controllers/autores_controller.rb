class AutoresController < ApplicationController
  # GET /autores
  # GET /autores.xml
  def index
    #@autores = Autor.all
    @autores = Autor.paginate :page => params[:page], :order => 'nome ASC', :per_page => 3

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @autores }
    end
  end

  # GET /autores/1
  # GET /autores/1.xml
  def show
    @autor = Autor.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @autor }
    end
  end

  # GET /autores/new
  # GET /autores/new.xml
  def new
    @autor = Autor.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @autor }
    end
  end

  # GET /autores/1/edit
  def edit
    @autor = Autor.find(params[:id])
  end

  # POST /autores
  # POST /autores.xml
  def create
    @autor = Autor.new(params[:autor])

    respond_to do |format|
      if @autor.save
        flash[:notice] = 'Autor was successfully created.'
        format.html { redirect_to(@autor) }
        format.xml  { render :xml => @autor, :status => :created, :location => @autor }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @autor.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /autores/1
  # PUT /autores/1.xml
  def update
    @autor = Autor.find(params[:id])

    respond_to do |format|
      if @autor.update_attributes(params[:autor])
        flash[:notice] = 'Autor was successfully updated.'
        format.html { redirect_to(@autor) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @autor.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /autores/1
  # DELETE /autores/1.xml
  def destroy
    @autor = Autor.find(params[:id])
    @autor.destroy

    respond_to do |format|
      format.html { redirect_to(autores_url) }
      format.xml  { head :ok }
    end
  end
end
