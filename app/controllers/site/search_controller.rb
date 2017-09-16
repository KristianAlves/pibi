class Site::SearchController < SiteController
  def products
    @products = Product.search(params[:q], params[:page])
    @categories = Category.all
    @carts_itens = Cart.count
    @carts_consumer_itens = CartConsumer.count
  end
end
