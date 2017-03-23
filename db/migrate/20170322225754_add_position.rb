class AddPosition < ActiveRecord::Migration
  def change
    add_column("locations", "position", :integer)
  end
end
