class Task < ApplicationRecord
  scope :incomplete, -> { where(done: false) }
  validates :description, presence: true
end
