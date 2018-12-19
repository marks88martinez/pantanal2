class CreateProductos < ActiveRecord::Migration[5.2]
  def change
    create_table :productos do |t|
      t.string :nombre
      t.text :descripcion
      t.decimal :precio, precision: 10, scale: 2
      t.decimal :precio_oferta, precision: 10, scale: 2
      t.integer :destacado
      t.integer :estado
      t.references :cat, foreign_key: false,  :null => true
      t.references :marca, foreign_key: false,  :null => true
      t.integer :c_relacionada
      t.integer :estado, default: 0

      t.timestamps
    end
  end
end
