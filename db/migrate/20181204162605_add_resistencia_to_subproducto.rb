class AddResistenciaToSubproducto < ActiveRecord::Migration[5.2]
  def change
    add_column :subproductos, :resistencia, :string
  end
end
