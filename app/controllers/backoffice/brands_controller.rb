class Backoffice::BrandsController < BackofficeController
  before_action :set_brand, only: [:edit, :update, :destroy]

  def index
    @brands = Brand.all
  end

  def new
    @brand = Brand.new
  end

  def create
    @brand = Brand.new(params_brand)
    if @brand.save
      redirect_to backoffice_brands_path, notice: "Brand #{@brand.title} successfully registered!"
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @brand.update(params_brand)
      redirect_to backoffice_brands_path, notice: "Brand #{@brand.title} successfully updated!"
    else
      render :edit
    end
  end

  def destroy
    if @brand.destroy
      redirect_to backoffice_brands_path, notice: "Brand #{@brand.title} successfully delete!"
    else
      render :index
    end
  end


private
  def set_brand
    @brand = Brand.find(params[:id])
  end

  def params_brand
    params.require(:brand).permit(:title)
  end

end
