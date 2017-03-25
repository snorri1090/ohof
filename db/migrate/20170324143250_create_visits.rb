class CreateVisits < ActiveRecord::Migration
  def change
    create_table :visits do |t|
      t.string "comments"
      t.string "community"
      t.string "work"
      t.timestamps
    end
  end
end
