class AddAttachmentImageToMarcas < ActiveRecord::Migration[5.2]
  def self.up
    change_table :marcas do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :marcas, :image
  end
end
