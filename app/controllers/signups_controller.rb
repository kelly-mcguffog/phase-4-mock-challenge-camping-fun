class SignupsController < ApplicationController
    wrap_parameters false
    def create
        signup = Signup.create(signup_params)
        render json: signup, status: :created
    end

    private
    
    def signup_params
        params.permit(:time, :camper_id, :activity_id)
    end
end
