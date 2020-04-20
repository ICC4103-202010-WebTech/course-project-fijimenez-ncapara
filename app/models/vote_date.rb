class VoteDate < ApplicationRecord
  belongs_to :event_invitation
  has_one :date_option
end
