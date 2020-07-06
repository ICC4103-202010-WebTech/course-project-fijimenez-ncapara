class Comment < ApplicationRecord
  has_and_belongs_to_many  :comments, optional:  true
  belongs_to :event
  belongs_to :user
end
