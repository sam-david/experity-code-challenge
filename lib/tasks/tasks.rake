namespace :tasks do
  desc "seed tasks with stock data"
  task seed: :environment do
    external_tasks = HTTParty.get('https://jsonplaceholder.typicode.com/todos')

    external_tasks.each do |external_task|
      task = Task.where(external_id: external_task['id']).first_or_create do |task|
        user = User.where(external_id: external_task['userId']).first_or_create
        task.user_id = user.id
        task.title = external_task['title']
        task.completed = external_task['completed']
      end
    end
  end
end
