class Site::ProductDetailController < SiteController

  def show
    @categories = Category.order_by_description
    @product = Product.find(params[:id])
    @logos = Logo.all
    @brands = Brand.all
    @carts_itens = Cart.count
    @carts_consumer_itens = CartConsumer.count
  end
end
