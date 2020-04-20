class VoteDate < ApplicationRecord
  belongs_to :event_invitation
  belongs_to :date_option
end
