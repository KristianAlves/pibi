class Site::CategoriesController < SiteController

  def show
    @categories = Category.order_by_description
    @category = Category.friendly.find(params[:id])
    @products = Product.by_category(@category, params[:page])
    @brands = Brand.all
    @logos = Logo.all
  end

end
