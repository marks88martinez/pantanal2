class Vendedore < ApplicationRecord
    has_attached_file :image, styles: { medium: "250x232>", thumb: "100x100>" }, default_url: "/imagen/banner_d.jpg"
    validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
end
