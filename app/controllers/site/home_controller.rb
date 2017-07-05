class Site::HomeController < SiteController
  def index
    @categories = Category.order_by_description
    @products = Product.last_nine
  end
end
