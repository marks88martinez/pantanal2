class AddCodigoToSubproducto < ActiveRecord::Migration[5.2]
  def change
    add_column :subproductos, :codigo, :string
  end
end
