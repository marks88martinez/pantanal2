class Sistema::VendedoresController < SistemaController
    before_action :set_vendedor, only: [:edit, :update, :destroy]
    def index
        @vendedores = Vendedore.all
    end
    def new
        @vendedor = Vendedore.new
    end
    def create
        @vendedor = Vendedore.create(params_vendedor)
        if @vendedor.save
            redirect_to sistema_vendedores_path, flash: {notice: "El vendedor fue registrado correctamente", alert: "success"}
        else
            render :new
            
        end
    end
    def edit
      
    end
    def update
        
        if @vendedor.update(params_vendedor)
            redirect_to sistema_vendedores_path, flash: {notice: "El vendedor fue actualizado correctamente", alert: "success"}
        else
            render :edit
        end
    end
    def destroy
        @vendedor.destroy
        redirect_to sistema_vendedores_path, flash: {notice: "El vendedor fue eliminado correctamente", alert: "danger"}
    end

    private
    def set_vendedor
        @vendedor = Vendedore.find(params[:id])

    end
    def params_vendedor
      params.require(:vendedore).permit(:nombre, :codigo, :email, :telefone, :whatsapp, :image)
    end
end
