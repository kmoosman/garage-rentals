class CreateRentals < ActiveRecord::Migration[5.2]
  def change
    create_table :rentals do |t|
      t.integer :event_id
      t.integer :garage_id
      t.integer :user_id
      t.boolean :friday
      t.boolean :saturday
      t.boolean :sunday
      t.timestamps
    end
  end
end
