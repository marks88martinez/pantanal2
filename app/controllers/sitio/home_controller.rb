class Sitio::HomeController < SitioController
    def index
        @banners = Banner.all
        @marca = Marca.limit(6)
        @categoria = Cat.where(cat_id: nil)
        @cat = Cat.all

        @prod_destacado = Producto.where(destacado: 1)
        @ultimos_prod = Producto.offset(rand(Producto.count)).limit(6)
        @banner_inferior = BannerInferior.all

       

       


        
        
        
        
       
    end
end
