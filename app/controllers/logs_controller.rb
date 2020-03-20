class LogsController < ApplicationController

    @currentActivity

    def new
        @log = Log.new
        @activity = Activity.find(params[:activity_id])
        @log = @activity.logs.create(log_params)
    end

    def create
        @activity = Activity.find(params[:activity_id])
        @log = @activity.logs.create(log_params)

        redirect_to activity_path(@activity)
    end

    private def log_params
        params.require(:log).permit(:description, :day, :duration)
    end

end
