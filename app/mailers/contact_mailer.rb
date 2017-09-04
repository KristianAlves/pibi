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
    mail(to: 'vendaspibi@terra.com.br', subject: "Orçamento via Site - Pessoa Jurídica")
  end

  def send_cart_consumer(profile_consumer, sender, message)
    @profile_consumer = profile_consumer
    @sender = sender
    @message = message
    @carts = CartConsumer.where(buyer: "1")
    mail(to: 'pibivarejo@terra.com.br', subject: "Orçamento via Site - Pessoa Física")
  end

end
