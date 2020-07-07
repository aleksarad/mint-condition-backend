class TasksController < ApplicationController

    def index
        tasks = Task.all 
        render json: tasks
    end

    def show
        task = Task.find(params[:id])
        if task
            render json: task
          else
            render json: { error: "Not found!" }, status: 404
        end
    end


    def create
        task = Task.create(task_params)
        if task.valid?
          render json: task
        else
          render json: { errors: task.errors.full_messages }, status: 400
        end
    end

    def destroy
        task = Task.find(params[:id])
        task.destroy
    end

    def update
        task = Task.find(params[:id])
        task.update(task_params)
        render json: task
    end
    
    private
    
    def task_params
        params.permit(:day_id, :category_id, :content, :complete)
    end
end
