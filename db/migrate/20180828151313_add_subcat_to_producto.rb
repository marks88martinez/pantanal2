class AddSubcatToProducto < ActiveRecord::Migration[5.2]
  def change
    add_column :productos, :subcat, :integer
  end
end
