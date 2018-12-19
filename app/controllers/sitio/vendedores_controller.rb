class Sitio::VendedoresController < SitioController
    def index
        
       
        @marca = Marca.all
        @categoria = Cat.where(cat_id: nil)
        @empresa = Empresa.all
        @vendedores = Vendedore.all
        @banners = Banner.all
       
    end
end
