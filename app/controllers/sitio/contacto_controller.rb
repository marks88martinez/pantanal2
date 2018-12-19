class Sitio::ContactoController < SitioController




    def index     
        constantes
    end
    def create

        puts "ESTA FUNCIONANDO ////////////////////////////"
        # begin
        ContactoMailer.send_message(params[:'email'],params[:'nome'],
            params[:'assunto'], params[:'mensagem']).deliver_now #deliver_later
            redirect_to sitio_contacto_index_path, flash: {notice: "El mensaje fue enviado correctamente"}
      
        #     @notify_message = "Email enviado con succeso"
        #     @notify_flag = "success"
        #   rescue
        #     @notify_message = "Error  ao enviar o Email. intente otra ves.."
        #     @notify_flag = "error"
        #   end
    end

    private

    def constantes
        @banners = Banner.all
        @marca = Marca.all
        @categoria = Cat.where(cat_id: nil)
        @cat = Cat.all
        @prod_destacado = Producto.where(destacado: 1)
    end
end
