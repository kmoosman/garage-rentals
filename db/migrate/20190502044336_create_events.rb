class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.string :event_name
      t.string :date
      t.string :venue_id
      t.timestamps
    end
  end
end


# Create join table

# Event Name 
# Event Date 
# Garage Number 
# Friday
# Saturday
# Sunday
# User Name 

# Event ID 
# Garage ID 
# User ID 


