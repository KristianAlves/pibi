class Consumers::RegistrationsController < Devise::RegistrationsController
  before_filter :configure_permitted_parameters

  def new
    build_resource({})
    resource.build_profile_consumer
    respond_with self.resource
  end

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [
      :email, :password, :password_confirmation,
      :profile_consumer_attributes => [:name, :phone, :cpf]]
      )
  end

end
