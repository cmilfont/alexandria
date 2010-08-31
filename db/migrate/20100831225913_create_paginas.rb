class CreatePaginas < ActiveRecord::Migration
  def self.up
    create_table :paginas do |t|
      t.integer :numero
      t.text :texto
      t.belongs_to :livro

      t.timestamps
    end
  end

  def self.down
    drop_table :paginas
  end
end
