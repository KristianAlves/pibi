class Backoffice::SurveyController < BackofficeController
  def members
    @members = Member.pesquisar(params[:q], params[:page])
  end
end
