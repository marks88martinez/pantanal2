class Sitio::DetalleProductosController < ApplicationController

    def show

        constantes
        # @ultimos_prod = Producto.limit(6)
        # @banner_inferior = BannerInferior.all
        # @producto_select = Producto.where(cat_id: params[:id]).or(Producto.where(subcat: params[:id])).page(params[:page])
        
        @detalle_producto = Producto.where(id: params[:id])
        @detalle_producto2 = Producto.friendly.find(params[:id])
        @pro2 = Producto.friendly.find(params[:id])
       
        @subproducto = Subproducto.where(producto_id: @detalle_producto2.id)

        
        # @sub = Subproducto.all
    #   puts "############= #{@sub.inspect}"

    # @dist = Subproducto.select(:nombre).distinct
    @dist = Subproducto.where(producto_id: @detalle_producto2.id).distinct
    puts "$$$$$$$$$#{@dist.color}"
         
        
    end


    private

    def constantes
        @banners = Banner.all
        @marca = Marca.all
        @categoria = Cat.where(cat_id: nil)
        @cat = Cat.all
        @prod_destacado = Producto.where(destacado: 1)
    end
end
