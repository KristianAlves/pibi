class Backoffice::ProductsController < BackofficeController
  before_action :set_product, only: [:edit, :update, :destroy]

  def index
    @products = Product.all
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(params_product)
    if @product.save
      redirect_to backoffice_products_path, notice: "product (#{@product.title}) successfully registered!"
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @product.update(params_product)
      redirect_to backoffice_products_path, notice: "Product (#{@product.title}) successfully updated!"
    else
      render :edit
    end
  end

  def destroy
    if @product.destroy
      redirect_to backoffice_products_path, notice: "Product (#{@product.title}) successfully delete!"
    else
      render :index
    end
  end

  private

  def set_product
    @product = Product.find(params[:id])
  end

  def params_product
    params.require(:product).permit(:title, :description, :subcategory_id, :brand_id)
  end

end
