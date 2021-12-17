class CreateUserOrgs < ActiveRecord::Migration[6.1]
  def change
    create_table :user_orgs do |t|
      t.integer :user_id
      t.integer :organization_id

      t.timestamps
    end
  end
end
