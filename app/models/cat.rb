class Cat < ApplicationRecord

   # FriendlyId
   include FriendlyId
   friendly_id :nombre, use: :slugged
 
  belongs_to :cat,  optional: true
  before_destroy :eliminar_sub_produc
 
  
  # has_and_belongs_to_many :cats, :foreign_key => 'cat_id', :dependent => :destroy 
  has_many :cats, dependent: :delete_all 




  has_many  :producto, foreign_key: "cat_id", dependent: :nullify





  
  has_attached_file :image, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/imagen/banner_d.jpg"
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/


  def subcategoria(id)
    Cat.where(cat_id: id)
  end



  private
    def eliminar_sub_produc
      
    # Producto.where(subcat: id).select do |p|
    #   p.update(subcat: nil)
    #   puts "MODIFICADO ///////////////"
    # end  

        
      
    
    end



  




  

  
end
