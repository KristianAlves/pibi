class ContactMailer < ApplicationMailer
  def send_message(sender, subject, message)
    @sender = sender
    @subject = subject
    @message = message
    mail(to: 'vendaspibi@terra.com.br', subject: @subject)
  end

  def send_cart_member(profile_member, sender, message)
    @profile_member = profile_member
    @sender = sender
    @message = message
    @carts = Cart.where(buyer: "1")
    mail(to: 'vendaspibi@terra.com.br', subject: "Orçamento via Site")
  end

end
