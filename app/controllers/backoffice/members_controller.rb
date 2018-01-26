class Backoffice::MembersController < BackofficeController

  def index
    @members = Member.order_by_mail(params[:page])
  end
end
