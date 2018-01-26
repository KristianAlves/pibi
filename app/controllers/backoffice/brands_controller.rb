class Backoffice::BrandsController < BackofficeController
  before_action :set_brand, only: [:edit, :update, :destroy]

  def index
    @brands = Brand.order_by_title(params[:page])
  end

  def new
    @brand = Brand.new
  end

  def create
    @brand = Brand.new(params_brand)
    if @brand.save
      redirect_to backoffice_brands_path, notice: t('backoffice.brand_create')
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @brand.update(params_brand)
      redirect_to backoffice_brands_path, notice: t('backoffice.brand_update')
    else
      render :edit
    end
  end

  def destroy
    if @brand.destroy
      redirect_to backoffice_brands_path, notice: t('backoffice.brand_destroy')
    else
      render :index
    end
  end


private
  def set_brand
    @brand = Brand.friendly.find(params[:id])
  end

  def params_brand
    params.require(:brand).permit(:title, :picture)
  end

end
