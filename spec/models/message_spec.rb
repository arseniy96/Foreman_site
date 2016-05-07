require 'rails_helper'

describe Message do
  it { should validate_presence_of :text }
  it { should validate_presence_of :username }
  it { should validate_length_of(:text).is_at_most(400) }
end