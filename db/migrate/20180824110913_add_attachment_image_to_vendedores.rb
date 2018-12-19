class AddAttachmentImageToVendedores < ActiveRecord::Migration[5.2]
  def self.up
    change_table :vendedores do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :vendedores, :image
  end
end
