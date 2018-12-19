class CreateProductoImagens < ActiveRecord::Migration[5.2]
  def change
    create_table :producto_imagens do |t|
      t.references :producto, foreign_key: true

      t.timestamps
    end
  end
end
