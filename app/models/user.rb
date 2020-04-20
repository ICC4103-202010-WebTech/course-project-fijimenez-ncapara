class User < ApplicationRecord
  has_many :users, class_name: "User", foreign_key: :"administrator_id"
  belongs_to :administrator, class_name: "User", optional: true
end
