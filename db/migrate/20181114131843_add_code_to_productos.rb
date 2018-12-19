class AddCodeToProductos < ActiveRecord::Migration[5.2]
  def change
    add_column :productos, :code, :integer
  end
end
