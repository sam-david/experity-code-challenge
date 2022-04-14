class User < ApplicationRecord
  has_many :tasks

  def self.update_tasks
    external_tasks = HTTParty.get('https://jsonplaceholder.typicode.com/todos')

    external_tasks.each do |external_task|
      Task.where(external_id: external_task['id']).first_or_create do |task|
        user = User.where(external_id: external_task['userId']).first_or_create
        task.user_id = user.id
        task.title = external_task['title']
        task.completed = external_task['completed']
      end
    end
  end

  def percentage_tasks_complete
    tasks.where(completed: true).count * 100 / tasks.count
  end
end
