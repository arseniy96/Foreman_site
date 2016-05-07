require 'rails_helper'

RSpec.describe Order, type: :model do
  it { should validate_presence_of :username }
  it { should validate_presence_of :phone }
  it { should validate_length_of(:message).is_at_most(400) }
end
