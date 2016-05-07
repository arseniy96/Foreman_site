class Order < ActiveRecord::Base
  validates :username, presence: true
  validates :phone, presence: true
  validates :message, length: {maximum: 400}
end
