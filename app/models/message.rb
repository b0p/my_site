class Message < ActiveRecord::Base
  validates :name, presence: true
  validates :name, length: { maximum: 100 }
  validates :email, presence: true
  validates :email, length: { maximum: 100 }
  validates :body, presence: true
  validates :body, length: { maximum: 500 }
end
