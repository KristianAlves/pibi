class Site::SendMailConsumerController < ApplicationController
  before_action :set_cart_consumer, only:[:new,:destroy]
  after_action :destroy, only:[:create]


  def new
  end

  def create
    ContactMailer.send_cart_consumer(params[:'profile_consumer-text'],
                                                        params[:'sender-text'],
                                                        params[:'message-text']).deliver_now
  end

  def destroy
    CartConsumer.delete_all
  end

  def set_cart_consumer
    @carts = CartConsumer.where(buyer: current_consumer)
  end

end
