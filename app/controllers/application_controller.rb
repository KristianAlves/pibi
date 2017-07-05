class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  layout :layout_by_resource

    private

      def layout_by_resource
          if devise_controller? && resource_name == :admin
            "backoffice_devise"
          elsif devise_controller? && resource_name == :member
            "site_devise"
          elsif devise_controller? && resource_name == :consumer
            "site_devise"
          else
            "application"
          end
      end
end
