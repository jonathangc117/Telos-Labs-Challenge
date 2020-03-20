class Log < ApplicationRecord
  belongs_to :activity
  validates :description, presence: true, length: {minimum: 5}
  validates :day, presence: true
  validates :duration, presence: true
end
