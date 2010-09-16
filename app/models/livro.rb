class Livro < ActiveRecord::Base

  belongs_to :autor
  has_many :paginas

  searchable do
    #text :texto_pagina do
    #  paginas.map{|pagina| pagina.texto }
    #end
    text :autor do
      autor.nome
    end
    text :nome
    integer :ano
  end

end

