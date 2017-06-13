class ContactMailer < ApplicationMailer
  def send_message(sender, subject, message)
    @sender = sender
    @subject = subject
    @message = message
    mail(to: 'vendaspibi@terra.com.br', subject: @subject)
  end
end
