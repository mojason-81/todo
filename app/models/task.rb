class Task < ApplicationRecord
  scope :incomplete, -> { where(done: false) }
end
