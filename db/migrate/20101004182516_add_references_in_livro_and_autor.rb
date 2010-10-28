class AddReferencesInLivroAndAutor < ActiveRecord::Migration
  def self.up
    create_table :autores_livros, :id => false do |t|
      t.integer :livro_id
      t.integer :autor_id

      t.timestamps
    end
  end

  def self.down
    drop_table :autores_livros
  end
end

