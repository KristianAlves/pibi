class Site::HomeController < SiteController
  def index
    @categories = Category.order_by_description
    @products = Product.descending_order(18)
  end
end
