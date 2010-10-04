class AddAttachmentesFileToLivro < ActiveRecord::Migration
  def self.up
    add_column :livros, :arquivo_file_name, :string
    add_column :livros, :arquivo_content_type, :string
    add_column :livros, :arquivo_file_size, :integer
  end

  def self.down

    remove_column :livros, :arquivo_file_name
    remove_column :livros, :arquivo_content_type
    remove_column :livros, :arquivo_file_size
  end
end

