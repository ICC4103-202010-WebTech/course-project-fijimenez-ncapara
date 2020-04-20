class AddCommentToEvent < ActiveRecord::Migration[6.0]
  def change
    add_reference :events, :comment, null: true, foreign_key: true
  end
end
