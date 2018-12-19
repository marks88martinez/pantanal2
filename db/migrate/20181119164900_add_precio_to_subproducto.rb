class AddPrecioToSubproducto < ActiveRecord::Migration[5.2]
  def change
    add_column :subproductos, :precio, :decimal, precision: 5, scale: 2
  end
end
