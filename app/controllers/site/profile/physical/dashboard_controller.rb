class Site::Profile::Physical::DashboardController < Site::ProfileController
  def index
      @brands = Brand.all
      @logos = Logo.all
      @carts_consumer_itens = CartConsumer.count
  end
end
