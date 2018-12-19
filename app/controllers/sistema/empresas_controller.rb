class Sistema::EmpresasController < SistemaController
    before_action :set_empresa, only: [:edit, :update, :destroy]
    def index
        @empresas = Empresa.all
    end
    def new
        @empresa = Empresa.new
    end
    def create
        @empresa = Empresa.create(params_empresa)
        if @empresa.save
            redirect_to sistema_empresas_path, flash: {notice: "La empresa fue registrado correctamente", alert: "success"}
        else
            render :new
            
        end
    end
    def edit
      
    end
    def update
        
        if @empresa.update(params_empresa)
            redirect_to sistema_empresas_path, flash: {notice: "La empresa fue actualizado correctamente", alert: "success"}
        else
            render :edit
        end
    end
    def destroy
        @empresa.destroy
        redirect_to sistema_empresas_path, flash: {notice: "La empresa fue eliminado correctamente", alert: "danger"}
    end

    private
    def set_empresa
        @empresa = Empresa.find(params[:id])

    end
    def params_empresa
      params.require(:empresa).permit(:titulo, :descripcion ,:image)
    end
end
