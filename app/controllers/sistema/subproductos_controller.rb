class Sistema::SubproductosController < SistemaController
    before_action :set_subprod, only: [:edit, :update, :destroy]

   
   
    def index

        # id = Subproducto.last
        @id = params[:producto_id]

     
        
      
        @subprod = Subproducto.where(producto_id: @id)
       
       
    end
    def new
    
        @subproducto = Subproducto.new
        

    end
   
    

    def create
        
        @subproducto = Subproducto.create(params_subprod)
        
        if @subproducto.save
            id = Subproducto.last
            redirect_to sistema_subproductos_path(producto_id: id.producto_id), flash: {notice: "El subproducto fue registrado correctamente", alert: "success"}
        else
            render :new
            
        end

      
    end
    def edit
        
       
      
    end
    def update
       

        if @subproducto.update(params_subprod)
            redirect_to sistema_subproductos_path(producto_id: @subproducto.producto_id ), flash: {notice: "El producto fue actualizado correctamente", alert: "success"}
        else
            render :edit
        end
       
        
       



       
      
    end

  
    def destroy
        @p = params[:producto_id]
        @subproducto.destroy
        redirect_to sistema_subproductos_path(producto_id: @p ), flash: {notice: "El producto fue eliminado correctamente", alert: "danger"}


       
    end
    
    private
    def set_subprod
        
        @subproducto = Subproducto.find(params[:id])
        
      
    end
    def params_subprod
        params.require(:subproducto).permit(:color, :producto_id, :image, :modelo, :tamanho, :peso, :cantidad, :acabamento, :recolhimento, :rolamento, :caplinhna,:codigo,:precio, :freio,
            :potencia, :tension, :acao, :peso_de_arremesso, :resistencia, :diametro)
      
    end
end
