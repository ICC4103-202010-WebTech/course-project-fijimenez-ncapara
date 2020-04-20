class Event < ApplicationRecord
  belongs_to :user, optional: true
  has_many :event_invitations
  has_many :reports
  has_many :comments
  has_many :event_files
  has_many :date_options
  has_one :notification
end
