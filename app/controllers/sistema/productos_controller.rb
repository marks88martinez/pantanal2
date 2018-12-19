class Sistema::ProductosController < SistemaController
    before_action :set_producto, only: [:edit, :update, :destroy]
    before_action :cat_options_for_select, only: [:new, :edit]
    before_action :marca_options_for_select, only: [:new, :edit]
  
    def index
         @productos = Producto.order(created_at: :desc).page(params[:page])
       
       

    end
    def new
        @producto = Producto.new
    end
    def create
        @producto = Producto.create(params_producto)
        if @producto.save
            redirect_to sistema_productos_path, flash: {notice: "El producto fue registrado correctamente", alert: "success"}
        else
            render :new
            
        end
    end
    def edit
      
    end
    def update
        
        # ContactoMailer.send_message("marks88martinez@gmail.com", "marcos@gmail.com", "subject-text").deliver_now
        if @producto.update(params_producto)
            redirect_to sistema_productos_path, flash: {notice: "El producto fue actualizado correctamente", alert: "success"}
        else
            render :edit
        end
    end
    def destroy

        
        @producto.destroy
        redirect_to sistema_productos_path, flash: {notice: "El producto fue eliminado correctamente", alert: "danger"}

    end
    
    def search
        @productos = Producto.search(params[:q], params[:page])
    
        if @productos.blank?
            redirect_to  sistema_productos_path,flash:{notice: "No se han encontrado coincidencias", alert: 'warning'}
        end
    end

    private
    def set_producto
        @producto = Producto.friendly.find(params[:id])

    end
    def params_producto
      params.require(:producto).permit(:nombre, :descripcion, :precio, :precio_oferta, :destacado, :estado, :cat_id, :marca_id,  :c_relacionada, :subcat, :disponible, :code,
        producto_imagens_attributes:[:id, :image, :producto_id,  :_destroy]
        )
    end

    def cat_options_for_select
        @cat = Cat.where(cat_id: nil)
       
    end
    def marca_options_for_select
        @marca = Marca.all
    end
   
end
