class CreateBreaks < ActiveRecord::Migration[6.1]
  def change
    create_table :breaks do |t|
      t.integer :shift_id
      t.integer :duration

      t.timestamps
    end
  end
end
