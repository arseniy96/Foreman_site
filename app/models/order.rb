class Order < ActiveRecord::Base
  validates :username, presence: true, length: {minimum: 2}
  validates :phone, presence: true
  validates :message, length: {maximum: 400}
end
