class Sitio::EmpresaController < SitioController
    def index
       
        @marca = Marca.all
        @categoria = Cat.where(cat_id: nil)
        @empresa = Empresa.all
        @banners = Banner.all
        
        
       
    end
end
