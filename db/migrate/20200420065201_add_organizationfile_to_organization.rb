class AddOrganizationfileToOrganization < ActiveRecord::Migration[6.0]
  def change
    add_reference :organizations, :organization_file, null: true, foreign_key: true
  end
end
