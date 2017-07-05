class Site::ProductDetailController < SiteController
  def show
    @product = Product.find(params[:id])
  end
end
