# Preview all emails at http://localhost:3000/rails/mailers/contacto_mailer
class ContactoMailerPreview < ActionMailer::Preview
    def send_message
        ContactoMailer.send_message("marks88martinez@gmail.com","Marcos", "Ahora si estamos", "subject-text")
    end

end
