class Sitio::ProductosController < SitioController

    def show
     
        
        respond_to do |format|
            format.html
            format.js 
          end

          @precio = Producto.select("max(precio) as precio").group("id").order("precio")
      
        

        constantes
        # unless request.path.match('/sitio/productos/%20%>')
        unless request.path.split('/').last  == '%20%%3E' 
            @producto_select2 = Cat.friendly.find(params[:id])
           
            # @producto_select = Producto.where(cat_id: @producto_select2).or(Producto.where(subcat: @producto_select2)).page(params[:page])
            @producto_select = Producto.where(cat_id: @producto_select2).or(Producto.where(subcat: @producto_select2)).order(params[:valor]).page(params[:page])
            @pro = Cat.find(@producto_select2.id)
            @pro2 = Cat.friendly.find( params[:id])
         
        


           
            
        
        
        else
            @producto_select = Producto.order("RANDOM()").page(params[:page])
        end
        
       
        
        
    end
    def detalle_marca
        constantes
        
        @producto_select2 = Marca.friendly.find(params[:id])
        @producto_select = Producto.where(marca_id: @producto_select2).page(params[:page])
    end
    
    def search
        @p = params[:q]
        # puts "////////////#{params[:q]}///////////"

        respond_to do |format|
            format.html
            format.js 
          end
        constantes
          if params[:q].blank?
            @producto_select = Producto.all().page(params[:page]).order(params[:valor])
          else
            @producto_select = Producto.search(params[:q], params[:page]).order(params[:valor])
          end

    
        # if @producto_select.blank? 
            # redirect_to  sitio_productos_path,flash:{notice: "No se han encontrado coincidencias", alert: 'warning'}
        # end
    end


    private

    def constantes
        @sort =[["Classificação Padrão", "created_at"],["Nome A-Z", "nombre ASC"], ["Nome Z-A", "nombre DESC"],["Menor Preço ", "precio ASC"], ["Maior Preço ", "precio DESC"]]

        @banners = Banner.all
        @marca = Marca.all
        @categoria = Cat.where(cat_id: nil)
        @cat = Cat.all
        @prod_destacado = Producto.where(destacado: 1)
        @ultimos_prod = Producto.limit(6)
        @banner_inferior = BannerInferior.all
    end
end
