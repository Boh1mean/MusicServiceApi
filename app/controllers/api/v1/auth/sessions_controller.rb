module Api
  module V1
    module Auth
      class SessionsController < DeviseTokenAuth::SessionsController
        respond_to :json

        # POST /api/v1/auth/sign_in
        def create
          super
        end

        def destroy
          super
        end
      end
    end
  end
end
