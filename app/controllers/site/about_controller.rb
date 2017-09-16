class Site::AboutController < SiteController


  def index
    @categories = Category.order_by_description
    @brands = Brand.all
    @logos = Logo.all
    @abouts = About.all
    @carts_itens = Cart.count
    @carts_consumer_itens = CartConsumer.count
  end

end

