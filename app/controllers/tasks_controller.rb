class TasksController < ApplicationController

  def create
    task = Task.create(task_prams)
  end

  private

  def task_params
    params.require(:task).permit(:content)
  end

end
