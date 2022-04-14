class User < ApplicationRecord
  has_many :tasks
  validates :external_id, presence: true

  def percentage_tasks_complete
    tasks.where(completed: true).count * 100 / tasks.count
  end
end
