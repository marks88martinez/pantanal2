class Sistema::MarcasController < SistemaController
    before_action :set_marca, only: [:edit, :update, :destroy]
    def index
        @marcas = Marca.all
    end
    def new
        @marca = Marca.new
    end
    def create
        @marca = Marca.create(params_marca)
        if @marca.save
            redirect_to sistema_marcas_path, flash: {notice: "La marca fue registrado correctamente", alert: "success"}
        else
            render :new
            
        end
    end
    def edit
      
    end
    def update
        
        if @marca.update(params_marca)
            redirect_to sistema_marcas_path, flash: {notice: "La marca fue actualizado correctamente", alert: "success"}
        else
            render :edit
        end
    end
    def destroy
        @marca.destroy
        redirect_to sistema_marcas_path, flash: {notice: "La marca fue eliminado correctamente", alert: "danger"}
    end

    private
    def set_marca
        @marca = Marca.friendly.find(params[:id])

    end
    def params_marca
      params.require(:marca).permit(:nombre, :image)
    end
end
