class VoteDate < ApplicationRecord
  belongs_to :event_invitation
  has_many :date_options
end
