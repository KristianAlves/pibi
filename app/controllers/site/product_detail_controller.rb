class Site::ProductDetailController < SiteController

  def show
    @categories = Category.order_by_description
    @product = Product.find(params[:id])
  end
end
