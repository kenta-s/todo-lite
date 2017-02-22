class Todo < ApplicationRecord
  enum status: { todo: 0, done: 1, canceled: 2 }
  validates :title, presence: true, length: { maximum: 100 }
  validates :status, presence: true
end
