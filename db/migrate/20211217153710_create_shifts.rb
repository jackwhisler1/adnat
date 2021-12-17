class CreateShifts < ActiveRecord::Migration[6.1]
  def change
    create_table :shifts do |t|
      t.integer :user_id
      t.integer :organization_id
      t.time :start
      t.time :end

      t.timestamps
    end
  end
end
