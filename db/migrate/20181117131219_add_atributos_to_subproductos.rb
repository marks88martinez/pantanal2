class AddAtributosToSubproductos < ActiveRecord::Migration[5.2]
  def change
    add_column :subproductos, :modelo, :string
    add_column :subproductos, :tamanho, :string
    add_column :subproductos, :peso, :string
    add_column :subproductos, :cantidad, :string
    add_column :subproductos, :acabamento, :string
    add_column :subproductos, :recolhimento, :string
    add_column :subproductos, :rolamento, :string
    add_column :subproductos, :caplinhna, :string
  end
end
