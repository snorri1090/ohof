class ChangeLocationColumns < ActiveRecord::Migration
  def up
    rename_column("locations", "location", "name")
    rename_column("locations", "specific_location", "sub_location")
    rename_column("locations", "location_comments", "comments")
    puts "*** Adding an index is next ***"
    add_index("locations", "name")
  end

  def down
    remove_index("locations", "name")
    rename_column("locations", "comments", "location_comments")
    rename_column("locations", "sub_location", "specific_location")
    rename_column("locations", "name", "location")
  end
end
