class Backoffice::LogosController < BackofficeController
  before_action :set_logo, only: [:edit, :update, :destroy]

  def index
    @logos = Logo.all
  end

  def new
    @logo = Logo.new
  end

  def create
    @logo = Logo.new(params_logo)
    if @logo.save
      redirect_to backoffice_logos_path, notice: t('backoffice.logo_create')
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @logo.update(params_logo)
      redirect_to backoffice_logos_path, notice: t('backoffice.logo_update')
    else
      render :edit
    end
  end

  def destroy
    if @logo.destroy
      redirect_to backoffice_logos_path, notice: t('backoffice.logo_destroy')
    else
      render :index
    end
  end


private
  def set_logo
    @logo = Logo.find(params[:id])
  end

  def params_logo
    params.require(:logo).permit(:title, :picture)
  end

end