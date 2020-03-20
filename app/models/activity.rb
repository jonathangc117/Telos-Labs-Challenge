class Activity < ApplicationRecord
    has_many :logs
    validates :title, presence: true, length: {minimum: 5}
end
