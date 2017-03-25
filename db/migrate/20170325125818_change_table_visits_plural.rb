class ChangeTableVisitsPlural < ActiveRecord::Migration
  def change
    rename_table("visit", "visits")
  end
end
