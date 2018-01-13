class Api::V1::TasksController < ApplicationController
  before_action :authenticate_with_token!
  respond_to :json
  
  def index
    tasks = current_user.tasks
    render json: { tasks: tasks }
  end
  
  def show
    task = current_user.tasks.find_by(params[:id])
    respond_with task
  end
  
  def create
    task = current_user.tasks.build(task_params)
    if task.save
      render json: task, status: 201
    else
      render json: { errors: task.errors }, status: 422
    end
  end
  
  def update
    task = current_user.tasks.find(params[:id])
    
    if task.update(task_params)
      render json: task, status: 200
    else
      render json: { errors: task.errors }, status: 422
    end
  end
  
  private
  
  def task_params
    params.require(:task).permit(:title, :description, :deadline, :done)
  end
end
