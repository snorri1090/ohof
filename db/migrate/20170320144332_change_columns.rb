class ChangeColumns < ActiveRecord::Migration
  def change
    rename_column("locations", "location", "name")
    rename_column("locations", "specific_location", "sub_location")
    rename_column("locations", "location_comments", "comments")
    puts "*** Adding an index is next ***"
    add_index("locations", "name")
  end
end
