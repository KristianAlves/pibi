class Backoffice::BannersController < BackofficeController
  before_action :set_banner, only: [:edit, :update, :destroy]

  def index
    @banners = Banner.all
  end

  def new
    @banner = Banner.new
  end

  def create
    @banner = Banner.new(params_banner)
    if @banner.save
      redirect_to backoffice_banners_path, notice: "Banner #{@banner.title} successfully registered!"
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @banner.update(params_banner)
      redirect_to backoffice_banners_path, notice: "Banner #{@banner.title} successfully updated!"
    else
      render :edit
    end
  end

  def destroy
    if @banner.destroy
      redirect_to backoffice_banners_path, notice: "Banner #{@banner.title} successfully delete!"
    else
      render :index
    end
  end


private
  def set_banner
    @banner = Banner.find(params[:id])
  end

  def params_banner
    params.require(:banner).permit(:title, :picture)
  end

end
