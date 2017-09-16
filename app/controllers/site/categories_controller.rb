class Site::CategoriesController < SiteController

  def show
    @categories = Category.order_by_description
    @category = Category.friendly.find(params[:id])
    @products = Product.by_category(@category, params[:page])
    @brands = Brand.all
    @logos = Logo.all
    @carts_itens = Cart.count
    @carts_consumer_itens = CartConsumer.count
  end

end
