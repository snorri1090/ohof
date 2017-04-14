class ChangeTimeDatatype < ActiveRecord::Migration
  def up
    change_table :visits do |t|
      t.change :time_of_visit, :string
    end
  end

  def down
    change_table :visits do |t|
      t.change :time_of_visit, :time
    end
  end
end
