class Backoffice::SearchController < BackofficeController
  def brands
    @brands = Brand.pesquisar(params[:q], params[:page])
  end
end
