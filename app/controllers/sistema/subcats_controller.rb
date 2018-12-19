class Sistema::SubcatsController < SistemaController
    before_action :set_cat, only: [:edit, :update, :destroy]
    before_action :cat_options_for_select, only: [:new, :edit]
    def index
      @cats = Cat.where.not(cat_id: nil)
    end
    def new
      @cat = Cat.new
      
    end

    def create
        @cat = Cat.create(params_cat)
        if @cat.save
            redirect_to sistema_subcats_path, flash: {notice: "La Subcategoria fue registrado correctamente", alert: "success"}
        else
            render :new
            
        end
    end
    def edit
      
    end
    def update
        
        if @cat.update(params_cat)
            redirect_to sistema_subcats_path, flash: {notice: "La Subcategoria fue actualizado correctamente", alert: "success"}
        else
            render :edit
        end
    end
    def destroy
        id = params[:id]
        Producto.where(subcat: id).select do |p|
            p.update_attributes(subcat: nil)
        end 
        @cat.destroy
        redirect_to sistema_subcats_path, flash: {notice: "La Subcategoria fue eliminado correctamente", alert: "danger"}
    end

    private
    def set_cat
        @cat = Cat.friendly.find(params[:id])

    end
    def params_cat
      params.require(:cat).permit(:nombre, :descripcion, :cat_id ,:image)
    end

    def cat_options_for_select
        @category = Cat.where(cat_id: nil)
    end
end
