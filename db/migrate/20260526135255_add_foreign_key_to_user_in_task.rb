class AddForeignKeyToUserInTask < ActiveRecord::Migration[8.1]
  def change
    change_table :tasks do |t|
     t.belongs_to :user
    end
  end
end
