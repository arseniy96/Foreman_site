class Message < ActiveRecord::Base
  validates :text, presence: true, length: {maximum: 400}
  validates :username, presence: true
end
