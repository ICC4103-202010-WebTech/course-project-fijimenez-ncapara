class User < ApplicationRecord
  has_many :users, class_name: "User", foreign_key: :"administrator_id"
  belongs_to :administrator, class_name: "User", optional: true
  belongs_to :organization, optional: true
  validates :email, format: { with: URI::MailTo::EMAIL_REGEXP }
end
