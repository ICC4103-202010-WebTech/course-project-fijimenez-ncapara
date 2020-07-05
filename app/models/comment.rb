class Comment < ApplicationRecord
  belongs_to :comment, optional:  true
  belongs_to :event
  belongs_to :user
end
