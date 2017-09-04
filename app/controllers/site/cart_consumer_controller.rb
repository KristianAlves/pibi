class Site::CartConsumerController < SiteController
  before_action :set_cart_consumer, only:[:edit, :update, :destroy]

  def index
    @categories = Category.order_by_description
    @brands = Brand.all
    @logos = Logo.all
    @abouts = About.all
    @products = Product.where(consumer: current_consumer)
    @cart_consumer = CartConsumer.where(buyer: current_consumer)
    @cart_qtt = Cart.all
    @carts_consumer_itens = CartConsumer.count
  end

  def create
    product = Product.find(params[:product_id])
    @cart_consumer = CartConsumer.create(product: product, buyer_id: current_consumer.id, description: product.title)
    redirect_to site_cart_consumer_index_path
  end

  def edit
  end

  def update
    if @cart_consumer.update(params_cart)
      redirect_to site_cart_consumer_index_path, notice: "Cart successfully updated!"
    else
      render :edit
    end
  end

  def destroy
    if @cart_consumer.destroy
        redirect_to site_cart_consumer_index_path, notice: ("Item excluído com sucesso")
    else
      render :index
    end
  end

  def set_cart_consumer
      @cart_consumer = CartConsumer.find(params[:id])
  end

  def params_cart
    params.require(:cart).permit(:quantity)
  end

end
