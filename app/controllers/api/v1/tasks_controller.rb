class Api::V1::TasksController < ApplicationController
  def index
    @tasks = Task.all
    render json: @tasks
  end

  def create
    @task = Task.new(task_params)
    if @task.save
      render json: @task
    end
  end
  
  def update
    @task = Task.find(params[:id])
    if @task.update(task_params)
      render json: @task
    end
  end


  private
    def task_params
      params.require(:task).permit(:name, :completed)
    end
end
