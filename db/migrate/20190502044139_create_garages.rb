class CreateGarages < ActiveRecord::Migration[5.2]
  def change
    create_table :garages do |t|
      t.integer :garage_number
      t.string :venue_id
      
      t.timestamps
    end
  end
end
