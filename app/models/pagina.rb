class Pagina < ActiveRecord::Base
  belongs_to :livro

  searchable do
    integer :numero
    integer :livro_id, :references => Livro
    text :texto
  end

end

