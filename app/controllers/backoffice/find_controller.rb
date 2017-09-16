class Backoffice::FindController < BackofficeController
  def products
    @products = Product.pesquisar(params[:q], params[:page])
  end
end
