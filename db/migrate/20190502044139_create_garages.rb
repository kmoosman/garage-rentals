class CreateGarages < ActiveRecord::Migration[5.2]
  def change
    create_table :garages do |t|
      t.integer :garage_number
      t.boolean :friday, default:false
      t.boolean :saturday, default:false
      t.boolean :sunday, default:false
      t.timestamps
    end
  end
end
