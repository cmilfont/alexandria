class Livro < ActiveRecord::Base

  has_many :paginas

  searchable do
    text :texto_pagina do
      paginas.map{|pagina| pagina.texto }
    end
    text :autor
    text :nome
    integer :data
  end

end

