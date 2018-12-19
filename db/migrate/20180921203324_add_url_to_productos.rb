class AddUrlToProductos < ActiveRecord::Migration[5.2]
  def change
    add_column :productos, :url, :string
  end
end
