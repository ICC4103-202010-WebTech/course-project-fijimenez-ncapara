class DateOption < ApplicationRecord
  belongs_to :vote_date
  belongs_to :event
end
