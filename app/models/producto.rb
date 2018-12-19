class Producto < ApplicationRecord
  # enum destacado: [:activo , :inactivo]
  # monetize :price_cents
  
 
  belongs_to :cat,  optional: true
  belongs_to :marca,  optional: true
\
  






  # FriendlyId
  include FriendlyId
  friendly_id :nombre, use: :slugged


  has_many :producto_imagens, dependent: :destroy
  has_many :subproductos, dependent: :destroy
  accepts_nested_attributes_for :producto_imagens, reject_if: :all_blank, allow_destroy: true
  
  PAGE = 12
  paginates_per PAGE
  # Scope
  scope :search,->(term, page){
    where("lower(nombre) LIKE ?", "%#{term.downcase}%").page(page).per(PAGE)
  }


  def subcategory
    if subcat.blank?
      '<span class="label label-primary">Sin Subcategoria</span>'
    else
    Cat.find(subcat).nombre
    end
  end

  def categoria_admin
    if cat_id.blank?
      "SIM CATEGORIA"
    else
        cat.nombre
      
    end
  end

  
  
  

 

  

  
  

end
