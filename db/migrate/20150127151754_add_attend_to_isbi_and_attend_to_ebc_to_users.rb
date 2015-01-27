class AddAttendToIsbiAndAttendToEbcToUsers < ActiveRecord::Migration
  def change
    add_column :users, :attend_to_isbi, :boolean
    add_column :users, :attend_to_ebc, :boolean
  end
end
