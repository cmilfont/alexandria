class AddAutorInLivro < ActiveRecord::Migration
  def self.up
	add_column :livros, :autor_id, :integer
  end

  def self.down
	remove_column :livros, :autor_id, :integer
  end
end
