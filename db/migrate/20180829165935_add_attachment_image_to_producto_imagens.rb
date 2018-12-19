class AddAttachmentImageToProductoImagens < ActiveRecord::Migration[5.2]
  def self.up
    change_table :producto_imagens do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :producto_imagens, :image
  end
end
