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
end
