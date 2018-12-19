class Sistema::BannerInferiorsController < SistemaController
    before_action :set_banner, only: [:edit, :update, :destroy]
    def index
        @banners = BannerInferior.all
    end
    def new
        @banner = BannerInferior.new
    end
    def create
        @banners = BannerInferior.all
        if @banners.count == 1
            redirect_to sistema_banner_inferiors_path, flash: {notice: "El banner ya esta registrado ", alert: "danger"}

        else 
          
            @banner = BannerInferior.create(params_banner)
            if @banner.save
                redirect_to sistema_banner_inferiors_path, flash: {notice: "El banner fue registrado correctamente", alert: "success"}
            else
                render :new
                
            end

        end
        
    end
    def edit
      
    end
    def update
        
        if @banner.update(params_banner)
            redirect_to sistema_banner_inferiors_path, flash: {notice: "El banner fue actualizado correctamente", alert: "success"}
        else
            render :edit
        end
    end
    def destroy
        @banner.destroy
        redirect_to sistema_banner_inferiors_path, flash: {notice: "El banner fue eliminado correctamente", alert: "danger"}
    end

    private
    def set_banner
        @banner = BannerInferior.find(params[:id])

    end
    def params_banner
      params.require(:banner_inferior).permit(:nombre ,:image)
    end
end
