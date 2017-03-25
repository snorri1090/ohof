class ChangeTableName < ActiveRecord::Migration
  def change
    rename_table("visits", "visit")
  end
end
