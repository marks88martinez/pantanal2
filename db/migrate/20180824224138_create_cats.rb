class CreateCats < ActiveRecord::Migration[5.2]
  def change
    create_table :cats do |t|
      t.string :nombre
      t.text :descripcion
      t.integer :estado, default: 0
      t.references :cat, foreign_key: false,  :null => true

      t.timestamps
    end
  end
end
