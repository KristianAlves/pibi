class Site::SubcategoriesController < SiteController

  def show
    @subcategories = Subcategory.all
    @categories = Category.order_by_description
    @subcategory = Subcategory.friendly.find(params[:id])
    @products = Product.by_subcategory(@subcategory, params[:page])
    @brands = Brand.all
    @logos = Logo.all
    @carts_itens = Cart.count
    @carts_consumer_itens = CartConsumer.count
  end

end
