class Event < ApplicationRecord
  belongs_to :user, optional: true
  has_many :event_invitations
  has_many :reports
end
