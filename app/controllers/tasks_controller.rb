class TasksController < ApplicationController
  def index
    @tasks = Task.all 
    @users = User.all.sort_by(&:percentage_tasks_complete).reverse
    @top_users = []
    @bottom_users = []
    @users.each do |user|
      if user.percentage_tasks_complete > 50
        @top_users.push(user)
      else
        @bottom_users.push(user)
      end
    end
  end

  def show
    @user = User.find(params['id'])
    @users = User.all.sort_by(&:percentage_tasks_complete).reverse
  end
end
