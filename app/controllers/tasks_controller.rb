class TasksController < ApplicationController
  def index
    # @tasks = Task.all
    # @tasks = current_user.tasks
    @tasks = policy_scope(Task)
    @task = Task.new
  end

  def create
    task = Task.new task_params
    task.user = current_user
    authorize task
    if task.save
        redirect_to tasks_path
    else
        redirect_to tasks_path
    end
  end

  private
  def task_params
  params.require(:task).permit(:description)
  end
end
