require 'rails_helper'

RSpec.describe User, type: :model do
  it "is not valid without a external_id" do
    user = User.new(external_id: nil)
    expect(user).to_not be_valid
  end

  it "is valid with all attributes only" do
    user = User.new(external_id: '2')
    expect(user).to be_valid
  end
end
