module Api
  module V1
    module Auth
      class RegistrationsController < DeviseTokenAuth::RegistrationsController
        before_action :configure_permitted_parameters, if: :devise_controller?
        respond_to :json

        # POST /api/v1/auth
        def create
          super
        end

        protected

        def configure_permitted_parameters
          devise_parameter_sanitizer.permit(:sign_up, keys: [ :full_name ])
        end

        def sign_up_params
          params.require(:user).permit(:email, :password, :password_confirmation, :full_name)
        end
      end
    end
  end
end
