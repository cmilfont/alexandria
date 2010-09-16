class CreateAutores < ActiveRecord::Migration
  def self.up
    create_table :autores do |t|
      t.string :nome

      t.timestamps
    end
  end

  def self.down
    drop_table :autores
  end
end
