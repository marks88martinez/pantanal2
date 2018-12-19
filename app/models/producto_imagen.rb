class ProductoImagen < ApplicationRecord
  belongs_to :producto
  has_attached_file :image, styles: { medium: "800x800>", thumb: "100x100>" }, default_url: "/imagen/banner_d.jpg"
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
  
  
end
