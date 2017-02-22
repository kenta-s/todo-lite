class Todo < ApplicationRecord
  enum status: { to_do: 0, done: 1, canceled: 2 }
  validates :title, presence: true, length: { maximum: 100 }
  validates :status, presence: true
end
