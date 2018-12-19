class AddAttrvarasToSubproducto < ActiveRecord::Migration[5.2]
  def change
    add_column :subproductos, :potencia, :string
    add_column :subproductos, :tension, :string
    add_column :subproductos, :acao, :string
    add_column :subproductos, :peso_de_arremesso, :string
  end
end
