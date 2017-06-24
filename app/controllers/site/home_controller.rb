class Site::HomeController < ApplicationController
  layout "site"

  def index
    @categories = Category.order_by_description
    @products = Product.last_nine
  end
end
