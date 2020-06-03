class Event < ApplicationRecord
  belongs_to :user, optional:true
  belongs_to :organization, optional: true
  has_many :event_invitations
  has_many :reports
  has_many :comments
  has_many :event_files
  has_many :date_options
  has_one :notification

  validates :name, :description, presence: true
  validates :start_date, not_in_past: true

  has_one_attached :flyer
end
