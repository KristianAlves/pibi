class Site::CartController < SiteController
  before_action :set_cart, only:[:edit, :update, :destroy]

  def index
    @categories = Category.order_by_description
    @brands = Brand.all
    @logos = Logo.all
    @abouts = About.all
    @products = Product.where(member: current_member)
    @carts = Cart.where(buyer: current_member)
    @cart_qtt = Cart.all
  end

  def create
    product = Product.find(params[:product_id])
    @cart = Cart.create(product: product, buyer_id: current_member.id, description: product.title)
    redirect_to site_cart_index_path
  end

  def destroy
    if @cart.destroy
        redirect_to site_cart_index_path, notice: ("Item excluído com sucesso")
    else
      render :index
    end
  end

  def set_cart
      @cart = Cart.find(params[:id])
  end

end
