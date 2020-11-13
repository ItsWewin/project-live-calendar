class AddIndexToMeetings < ActiveRecord::Migration
  def change
    add_index :meetings, :availability_id, unique: true
    add_index :meetings, :pioneer_id, unique: false
  end
end
