class ContactoMailer < ApplicationMailer

    def send_message( recipient, name, subject, message)
        # sleep(7)
        # @current_admin = current_admin
        @recipient = recipient
        @name = name
        @subject = subject
        @message = message
        mail(to: @recipient, subject: @subject)
      end
end
