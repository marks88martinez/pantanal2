class AddDiametroToSubproducto < ActiveRecord::Migration[5.2]
  def change
    add_column :subproductos, :diametro, :string
  end
end
