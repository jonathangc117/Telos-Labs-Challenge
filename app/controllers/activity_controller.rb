class ActivityController < ApplicationController
    def index
        @activities = Activity.all
    end

    def new
        @activity = Activity.new
        @log = Log.new
    end

    def show
        @log = Log.new
        @activity = Activity.find(params[:id])
        logger.debug @activity
    end


    def create
        @activity = Activity.new(activity_params)

        if(@activity.save)
            redirect_to @activity
        else
            render 'new'
        end
    end

    private def activity_params
        params.require(:activity).permit(:title)
    end
end
