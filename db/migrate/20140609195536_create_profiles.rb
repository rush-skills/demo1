class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.string :tn_id
      t.string :tn_manager
      t.string :client_name
      t.string :accommodation_name
      t.string :accommodation_fee
      t.text :flight_details
      t.string :fb_link
      t.string :country
      t.string :profile_pic
      t.text :expectations
      t.integer :user_id

      t.timestamps
    end
  end
end
