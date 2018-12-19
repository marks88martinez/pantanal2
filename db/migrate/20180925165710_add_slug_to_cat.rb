class AddSlugToCat < ActiveRecord::Migration[5.2]
  def change
    add_column :cats, :slug, :string
    add_index :cats, :slug, unique: true
  end
end
