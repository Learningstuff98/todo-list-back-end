class TasksController < ApplicationController
  skip_before_action :verify_authenticity_token

  def create
    task = Task.create(task_params)
  end

  private

  def task_params
    params.require(:task).permit(:content)
  end

end
