require 'rails_helper'

RSpec.describe Task, type: :model do
  it "is invalid with no attributes" do
    expect(Task.new).to_not be_valid
  end

  it "is not valid without a title" do
    task = Task.new(title: nil)
    expect(task).to_not be_valid
  end

  it "is not valid without a external_id" do
    task = Task.new(external_id: nil)
    expect(task).to_not be_valid
  end

  it "is not valid without a completed" do
    task = Task.new(completed: nil)
    expect(task).to_not be_valid
  end

  it "is not valid without a user" do
    task = Task.new(user: nil)
    expect(task).to_not be_valid
  end

  it "is valid with all attributes only" do
    user = User.new(external_id: '2')
    task = Task.new(user: user, title: 'test', external_id: '2', completed: true)
    expect(task).to be_valid
  end
end
