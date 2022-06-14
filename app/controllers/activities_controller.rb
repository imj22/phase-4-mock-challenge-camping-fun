class ActivitiesController < ApplicationController
rescue_from ActiveRecord::RecordNotFound, with: :not_found
    def index
        activities = Activity.all
        render json: activities, status: :ok
    end

    def show
        activity = Activity.find(params[:id])
        render json: activity, status: :ok
    end

    def destroy
        activity = Activity.find(params[:id])
        activity.destroy
        head :ok
    end

    private

    def not_found
        render json: {error: "Activity not found"}, status: 404
    end
end
