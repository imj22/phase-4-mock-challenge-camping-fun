class ActivitiesController < ApplicationController
    
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

end
