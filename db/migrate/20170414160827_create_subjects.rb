class CreateSubjects < ActiveRecord::Migration
  def change
    create_table :subjects do |t|
      t.string   "name"
      t.integer  "position"
      t.boolean  "visible",    default: false
      t.datetime "created_at"
      t.datetime "updated_at"
      t.timestamps
    end
  end
end
