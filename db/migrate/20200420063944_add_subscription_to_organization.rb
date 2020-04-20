class AddSubscriptionToOrganization < ActiveRecord::Migration[6.0]
  def change
    add_reference :organizations, :subscription, null: true, foreign_key: true
  end
end
