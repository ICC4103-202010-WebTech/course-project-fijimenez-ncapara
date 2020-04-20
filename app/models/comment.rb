class Comment < ApplicationRecord
  has_many :comments, class_name: "Comment", foreign_key: :"reply_id"
  belongs_to :reply, class_name: "Comment", optional: true
end
