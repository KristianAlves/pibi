class Backoffice::ProductsController < BackofficeController
  before_action :set_product, only: [:edit, :update, :destroy]

  def index
    @products = Product.descending_products(params[:page])
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(params_product)
    if @product.save
      redirect_to backoffice_products_path, notice: t('backoffice.product_create')
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @product.update(params_product)
      redirect_to backoffice_products_path, notice: t('backoffice.product_update')
    else
      render :edit
    end
  end

  def destroy
    if @product.destroy
      redirect_to backoffice_products_path, notice: t('backoffice.product_destroy')
    else
      render :index
    end
  end

  private

  def set_product
    @product = Product.find(params[:id])
  end

  def params_product
    params.require(:product).permit(:title, :description, :category_id, :subcategory_id, :brand_id, :picture)
  end

end
