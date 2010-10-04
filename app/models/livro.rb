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

  def self.perform(livro_id)
    book = Livro.find(livro_id)

    url = RAILS_ROOT + "/public" + book.file.url
  	receiver = PageTextReceiver.new
    pdf = PDF::Reader.file(url, receiver)
    page_number = 0
    receiver.content.each{|page|
      page_number += 1
      book.paginas << Pagina.new(:texto => page, :numero => page_number)
    }
    Sunspot.index Pagina.all

    #repo = Repository.find(repo_id)
    #repo.create_archive(branch)
  end

  def async_create_paginas
    Resque.enqueue(Livro, self.id)
  end

end

