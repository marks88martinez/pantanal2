class Marca < ApplicationRecord

    
    has_one :producto
      # FriendlyId
    include FriendlyId
    friendly_id :nombre, use: :slugged

    has_attached_file :image, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/imagen/banner_d.jpg"
    validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/

  
end
