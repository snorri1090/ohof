class AddVisitTime < ActiveRecord::Migration
  def change
    add_column("visits", "time_of_visit", :integer)
    add_column("visits", "time_spent", :string, :limit => 50)
  end
end
