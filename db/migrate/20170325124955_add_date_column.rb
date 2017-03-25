class AddDateColumn < ActiveRecord::Migration
  def change
    add_column("visit", "date", :datetime)
  end
end
