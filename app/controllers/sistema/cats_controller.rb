class Sistema::CatsController < SistemaController
    before_action :set_cat, only: [:edit, :update, :destroy]
    def index
      @cats = Cat.where(cat_id: nil)
    end
    def new
      @cat = Cat.new
      
    end

    def create
        @cat = Cat.create(params_cat)
        if @cat.save
            redirect_to sistema_cats_path, flash: {notice: "La categoria fue registrado correctamente", alert: "success"}
        else
            render :new
            
        end
    end
    def edit
      
    end
    def update
        
        if @cat.update(params_cat)
            redirect_to sistema_cats_path, flash: {notice: "La categoria fue actualizado correctamente", alert: "success"}
        else
            render :edit
        end
    end
    def destroy
        id = params[:id]
        Producto.where(cat_id: id).select do |p|
            p.update_attributes(cat_id: nil)
            p.update_attributes(subcat: nil)
           
          end 

        @cat.destroy

        
        redirect_to sistema_cats_path, flash: {notice: "La categoria fue eliminado correctamente", alert: "danger"}
    end

    private
    def set_cat
     
        @cat = Cat.friendly.find(params[:id])
        

    end
    def params_cat
      params.require(:cat).permit(:nombre, :descripcion, :cat_id,:image)
    end
end
