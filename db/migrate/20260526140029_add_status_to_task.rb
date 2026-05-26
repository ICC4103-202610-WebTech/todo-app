class AddStatusToTask < ActiveRecord::Migration[8.1]
  def change
    change_table :tasks do |t|
    t.integer :status, null: false, default: 0
    end
  end
end
