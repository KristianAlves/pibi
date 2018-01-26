class Backoffice::ConsumersController < BackofficeController

  def index
    @consumers = Consumer.order_by_mail(params[:page])
  end

end
