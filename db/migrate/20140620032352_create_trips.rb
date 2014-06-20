class CreateTrips < ActiveRecord::Migration
  def change
    create_table :trips do |t|
      t.string :from
      t.string :to
      t.date :trip_date
      t.integer :user_id
      t.integer :seats_max
      t.integer :seats_left

      t.timestamps
    end
  end
end
