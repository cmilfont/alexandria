class LivrosController < ApplicationController
  # GET /livros
  # GET /livros.xml
  def index
    @livros = Livro.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @livros }
    end
  end

  # GET /livros/1
  # GET /livros/1.xml
  def show
    @livro = Livro.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @livro }
    end
  end

  # GET /livros/new
  # GET /livros/new.xml
  def new
    @livro = Livro.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @livro }
    end
  end

  # GET /livros/1/edit
  def edit
    @livro = Livro.find(params[:id])
  end

  # POST /livros
  # POST /livros.xml
  def create
    @livro = Livro.new(params[:livro])

    respond_to do |format|
      if @livro.save
        flash[:notice] = 'Livro was successfully created.'
        format.html { redirect_to(@livro) }
        format.xml  { render :xml => @livro, :status => :created, :location => @livro }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @livro.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /livros/1
  # PUT /livros/1.xml
  def update
    @livro = Livro.find(params[:id])

    respond_to do |format|
      if @livro.update_attributes(params[:livro])
        flash[:notice] = 'Livro was successfully updated.'
        format.html { redirect_to(@livro) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @livro.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /livros/1
  # DELETE /livros/1.xml
  def destroy
    @livro = Livro.find(params[:id])
    @livro.destroy

    respond_to do |format|
      format.html { redirect_to(livros_url) }
      format.xml  { head :ok }
    end
  end
end
