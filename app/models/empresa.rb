class Empresa < ApplicationRecord
    has_attached_file :image, styles: { medium: "1920x1391>", thumb: "100x100>" }, default_url: "/imagen/banner_d.jpg"
    validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
end
