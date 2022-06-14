class SignupsController < ApplicationController
    def index
        signups = Signup.all
        render json: signups, status: :ok
    end

    def show
        signup = Signup.find(params[:id])
        render json: signup, status: :okay
    end

    def create
        new_signup = Signup.create!(signup_params)
        render json: new_signup, status: :created
    end

    private

    def signup_params
        params.permit(:time, :camper_id, :activity_id)
    end
end
