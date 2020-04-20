class User < ApplicationRecord
  has_many :users, class_name: "User", foreign_key: :"administrator_id"
  belongs_to :administrator, class_name: "User", optional: true
  has_many :organizations, through: Subscription
  has_many :events
  has_many :event_invitations
  has_many :reports
  has_many :comments
  has_one :mail_box
  has_many :notifications
  validates :email, format: { with: URI::MailTo::EMAIL_REGEXP }
end
