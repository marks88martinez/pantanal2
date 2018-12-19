class AddSlugToMarca < ActiveRecord::Migration[5.2]
  def change
    add_column :marcas, :slug, :string
    add_index :marcas, :slug, unique: true
  end
end
