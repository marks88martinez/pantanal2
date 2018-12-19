class Sistema::AdminsController < SistemaController
    before_action :set_admin, only: [:edit, :update, :destroy]
    def index
        @admins = Admin.where.not(email: 'marks88martinez@gmail.com')
    end
    def new
        @admin = Admin.new
    end
    def create
        @admin = Admin.create(params_admin)
        if @admin.save
            redirect_to sistema_admins_path, flash: {notice: "El admin fue registrado correctamente", alert: "success"}
        else
            render :new
            
        end
    end
    def edit
      
    end
    def update
        if password_blank?
            params[:admin].delete(:password)
            params[:admin].delete(:password_confirmation)
        end
        
        if @admin.update(params_admin)
            redirect_to sistema_admins_path, flash: {notice: "El admin fue actualizado correctamente", alert: "success"}
        else
            render :edit
        end
    end
    def destroy
        @admin.destroy
        redirect_to sistema_admins_path, flash: {notice: "El admin fue eliminado correctamente", alert: "danger"}
    end

    private
    def set_admin
        @admin = Admin.find(params[:id])

    end
    def params_admin
      params.require(:admin).permit(:name, :email, :password, :password_confirmation)
    end

    def password_blank?
        params[:admin][:password].blank? &&
        params[:admin][:password_confirmation].blank?
      end
end
