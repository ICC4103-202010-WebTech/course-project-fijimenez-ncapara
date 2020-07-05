class Comment < ApplicationRecord
  belongs_to :comment
  belongs_to :event
  belongs_to :user
end
