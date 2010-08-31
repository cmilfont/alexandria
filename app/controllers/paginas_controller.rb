class PaginasController < ApplicationController
  # GET /paginas
  # GET /paginas.xml
  def index
    @paginas = Pagina.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @paginas }
    end
  end

  # GET /paginas/1
  # GET /paginas/1.xml
  def show
    @pagina = Pagina.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @pagina }
    end
  end

  # GET /paginas/new
  # GET /paginas/new.xml
  def new
    @pagina = Pagina.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @pagina }
    end
  end

  # GET /paginas/1/edit
  def edit
    @pagina = Pagina.find(params[:id])
  end

  # POST /paginas
  # POST /paginas.xml
  def create
    @pagina = Pagina.new(params[:pagina])

    respond_to do |format|
      if @pagina.save
        flash[:notice] = 'Pagina was successfully created.'
        format.html { redirect_to(@pagina) }
        format.xml  { render :xml => @pagina, :status => :created, :location => @pagina }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @pagina.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /paginas/1
  # PUT /paginas/1.xml
  def update
    @pagina = Pagina.find(params[:id])

    respond_to do |format|
      if @pagina.update_attributes(params[:pagina])
        flash[:notice] = 'Pagina was successfully updated.'
        format.html { redirect_to(@pagina) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @pagina.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /paginas/1
  # DELETE /paginas/1.xml
  def destroy
    @pagina = Pagina.find(params[:id])
    @pagina.destroy

    respond_to do |format|
      format.html { redirect_to(paginas_url) }
      format.xml  { head :ok }
    end
  end
end
