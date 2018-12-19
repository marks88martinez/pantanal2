class AddFrioToSubproducto < ActiveRecord::Migration[5.2]
  def change
    add_column :subproductos, :freio, :string
  end
end
