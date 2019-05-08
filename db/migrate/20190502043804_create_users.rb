class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :username
      t.string :google_token
      t.string :google_refresh_token
      # t.string :password
      t.string :password_digest
      # t.boolean :admin, default:false

      t.timestamps
    end
  end
end
