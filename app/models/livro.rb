class Livro < ActiveRecord::Base

  @queue = :file_serve

  has_and_belongs_to_many :autores
  has_many :paginas, :dependent => :destroy

  has_attached_file :arquivo

  searchable do
    text :autor do
      autores.map {|autor| autor.nome}
    end
    text :titulo
    integer :ano
  end

  def processa(livro_id)
    require 'pdf/reader'
    book = Livro.find(livro_id)

    url = RAILS_ROOT + "/public" + book.arquivo.url
  	receiver = PageTextReceiver.new
    pdf = PDF::Reader.file(url, receiver)
    page_number = 0
    receiver.content.each{|page|
      page_number += 1
      book.paginas << Pagina.new(:texto => page, :numero => page_number)
    }
    Sunspot.index Pagina.all
  end

  class << self

    def queue
      @queue
    end

    def queue=( new_queue )
      @queue = new_queue
    end

    def deliver( id )
      Resque.enqueue(Livro, id )
    end

    def perform( id )
      new().processa(id)
    end

  end

end

