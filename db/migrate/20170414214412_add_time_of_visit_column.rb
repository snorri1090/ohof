class AddTimeOfVisitColumn < ActiveRecord::Migration
  def change
    add_column(:visits, :time_of_visit, :time)
  end
end
