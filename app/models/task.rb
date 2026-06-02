class Task < ApplicationRecord
  belongs_to :user

  validates :description, presence: true
  validates :status, presence: true

  enum :status, {
    pending: 0,
    in_progress: 1,
    completed: 2
  }

  def display_description
    "#{description} - #{status}"
  end
end
