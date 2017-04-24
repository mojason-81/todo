class Task < ApplicationRecord
  scope :incomplete, -> { where(done: false) }
  validates :description, presence: true
  belongs_to :user
  has_and_belongs_to_many :tags
end
