class Site::HomeController < SiteController
  def index
    @categories = Category.order_by_description
    @products = Product.descending_order(params[:page])
    @banners = Banner.all
    @brands = Brand.order_title
    @logos = Logo.all
    @carts_itens = Cart.count
    @carts_consumer_itens = CartConsumer.count
  end
end
