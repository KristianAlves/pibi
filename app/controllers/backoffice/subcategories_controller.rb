class Backoffice::SubcategoriesController < BackofficeController
   before_action :set_subcategory, only: [:edit, :update, :destroy]

  def index
    @subcategories = Subcategory.order_by_description
  end

  def new
    @subcategory = Subcategory.new
  end

  def create
    @subcategory = Subcategory.new(params_subcategory)
    if @subcategory.save
      redirect_to backoffice_subcategories_path, notice: t('backoffice.subcategory_create')
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @subcategory.update(params_subcategory)
      redirect_to backoffice_subcategories_path, notice: t('backoffice.subcategory_update')
    else
      render :edit
    end
  end

  def destroy
    if @subcategory.destroy
      redirect_to backoffice_subcategories_path, notice: t('backoffice.subcategory_destroy')
    else
      render :index
    end
  end

  private

  def set_subcategory
    @subcategory = Subcategory.friendly.find(params[:id])
  end

  def params_subcategory
    params.require(:subcategory).permit(:title, :category_id)
  end

end
