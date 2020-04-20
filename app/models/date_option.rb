class DateOption < ApplicationRecord
  has_many :vote_date
  belongs_to :event
end
