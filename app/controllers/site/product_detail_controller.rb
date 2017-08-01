class Site::ProductDetailController < SiteController

  def show
    @categories = Category.order_by_description
    @product = Product.find(params[:id])
    @logos = Logo.all
  end
end
