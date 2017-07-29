class Site::Profile::Physical::MyDataController < Site::ProfileController
  before_action :set_profile_consumer, only: [:edit, :update]

  def edit
  end

  def update
    if @profile_consumer.update(params_profile_consumer)
      redirect_to edit_site_profile_physical_my_datum_path(current_consumer.id), notice: "Data successfully updated!"
    else
      render :edit
    end
  end

  private

  def set_profile_consumer
    @profile_consumer = ProfileConsumer.find_or_create_by(consumer_id: current_consumer.id)
  end

  def params_profile_consumer
    params.require(:profile_consumer).permit(:id, :name, :cpf, :phone)
  end

end