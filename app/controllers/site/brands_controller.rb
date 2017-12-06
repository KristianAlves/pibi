class Site::BrandsController < SiteController

  def show
    @subcategories = Subcategory.all
    @categories = Category.order_by_description
    @brand = Brand.friendly.find(params[:id])
    @products = Product.by_brand(@brand, params[:page])
    @brands = Brand.all
    @logos = Logo.all
    @carts_itens = Cart.count
    @carts_consumer_itens = CartConsumer.count
  end

end
