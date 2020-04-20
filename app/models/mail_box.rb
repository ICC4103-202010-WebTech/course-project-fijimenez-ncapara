class MailBox < ApplicationRecord
  belongs_to :user
  has_many  :inbox_messages
end
