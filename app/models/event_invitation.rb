class EventInvitation < ApplicationRecord
  belongs_to :user
  belongs_to :event
  has_one :vote_date
end
