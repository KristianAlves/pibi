class Site::HomeController < SiteController
  def index
    @categories = Category.order_by_description
    @products = Product.descending_order(params[:page])
  end
end
