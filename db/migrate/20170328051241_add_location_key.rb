class AddLocationKey < ActiveRecord::Migration
  def change
    add_column("visits", "location_id", :integer)
    add_index("visits", "location_id")
  end
end
