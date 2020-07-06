class Comment < ApplicationRecord
  has_many  :comments
  belongs_to :event
  belongs_to :user
end
