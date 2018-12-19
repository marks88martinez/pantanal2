class CreateVendedores < ActiveRecord::Migration[5.2]
  def change
    create_table :vendedores do |t|
      t.string :nombre
      t.string :codigo
      t.string :email
      t.string :telefone
      t.string :whatsapp

      t.timestamps
    end
  end
end
