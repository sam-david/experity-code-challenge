class Task < ApplicationRecord
  belongs_to :user
  validates :external_id, presence: true
  validates :title, presence: true
  validates :completed, inclusion: { in: [ true, false ] }
  validates_associated :user
end
