class Site::Profile::Legal::DashboardController < Site::ProfileController
  layout "profile"
  def index
      @brands = Brand.all
      @logos = Logo.all
      @carts_itens = Cart.count
  end
end
