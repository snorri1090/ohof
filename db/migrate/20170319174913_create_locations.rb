class CreateLocations < ActiveRecord::Migration
  def up
    create_table :locations do |t|
      t.string "location"
      t.string "specific_location"
      t.string "category"
      t.boolean "wifi"
      t.string "wifi_detail"
      t.string "wifi_password"
      t.string "power"
      t.boolean "food"
      t.boolean "coffee"
      t.string "food_detail"
      t.string "location_comments"
      t.string "conversation"
      t.string "work_done"

      t.timestamps
    end

    def down
      drop_table :locations
    end
  end
end
