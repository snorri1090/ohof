class AddVisitToLocation < ActiveRecord::Migration
  def change
    add_column("locations", "visit_id", :integer)
    add_index("locations", "visit_id")
  end
end
