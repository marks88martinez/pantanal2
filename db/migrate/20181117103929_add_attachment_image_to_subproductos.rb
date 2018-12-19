class AddAttachmentImageToSubproductos < ActiveRecord::Migration[5.2]
  def self.up
    change_table :subproductos do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :subproductos, :image
  end
end
