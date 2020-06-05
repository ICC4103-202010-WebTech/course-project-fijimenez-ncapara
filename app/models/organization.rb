class Organization < ApplicationRecord
  has_many :users, :through => :subscriptions
  has_many :organization_files
  has_many :subscriptions
  has_many :events

  has_one_attached :photo
end
