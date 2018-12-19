class AddAttachmentImageToEmpresas < ActiveRecord::Migration[5.2]
  def self.up
    change_table :empresas do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :empresas, :image
  end
end
