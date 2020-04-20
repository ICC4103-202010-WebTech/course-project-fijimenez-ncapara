class Organization < ApplicationRecord
  has_many :users, :through => Subscription
  has_many :organization_files
end
