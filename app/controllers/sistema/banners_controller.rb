class Sistema::BannersController < SistemaController
    before_action :set_banner, only: [:edit, :update, :destroy]
    def index
        @banners = Banner.all
    end
    def new
        @banner = Banner.new
    end
    def create
        @banner = Banner.create(params_banner)
        if @banner.save
            redirect_to sistema_banners_path, flash: {notice: "El banner fue registrado correctamente", alert: "success"}
        else
            render :new
            
        end
    end
    def edit
      
    end
    def update
        
        if @banner.update(params_banner)
            redirect_to sistema_banners_path, flash: {notice: "El banner fue actualizado correctamente", alert: "success"}
        else
            render :edit
        end
    end
    def destroy
        @banner.destroy
        redirect_to sistema_banners_path, flash: {notice: "El banner fue eliminado correctamente", alert: "danger"}
    end

    private
    def set_banner
        @banner = Banner.find(params[:id])

    end
    def params_banner
      params.require(:banner).permit(:nombre, :image, :url)
    end
end
