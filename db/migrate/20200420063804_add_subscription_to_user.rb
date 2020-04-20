class AddSubscriptionToUser < ActiveRecord::Migration[6.0]
  def change
    add_reference :users, :subscription, null: true, foreign_key: true
  end
end
