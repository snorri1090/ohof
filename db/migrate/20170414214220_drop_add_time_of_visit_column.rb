class DropAddTimeOfVisitColumn < ActiveRecord::Migration
  def up
    remove_column(:visits, :time_of_visit)
  end

  def down
    remove_column(:visits, :time_of_visit)
  end
end
