class AddDisponibleToProductos < ActiveRecord::Migration[5.2]
  def change
    add_column :productos, :disponible, :integer
  end
end
