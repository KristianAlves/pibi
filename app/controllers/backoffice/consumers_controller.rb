class Backoffice::ConsumersController < BackofficeController

  def index
    @consumers = Consumer.all
  end

end
