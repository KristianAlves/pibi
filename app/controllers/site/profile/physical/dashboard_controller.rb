class Site::Profile::Physical::DashboardController < Site::ProfileController
  def index
      @brands = Brand.all
      @logos = Logo.all
  end
end
