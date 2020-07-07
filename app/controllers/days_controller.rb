class DaysController < ApplicationController
    def index
        days = Day.all 
        render json: days, include: "tasks.category"
    end

    def show
        day = Day.find(params[:id])
        if day
            render json: day, include: "tasks.category"
          else
            render json: { error: "Not found!" }, status: 404
        end

    end
end
