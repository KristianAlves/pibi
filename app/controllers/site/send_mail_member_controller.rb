class Site::SendMailMemberController < ApplicationController
  before_action :set_cart, only:[:new,:destroy]
  after_action :destroy, only:[:create]

  def new
  end

  def create
    ContactMailer.send_cart_member(params[:'profile_member-text'],
                                                        params[:'sender-text'],
                                                        params[:'message-text']).deliver_now
  end

  def destroy
    Cart.delete_all
  end

  def set_cart
    @carts = Cart.where(buyer: current_member)
  end

end