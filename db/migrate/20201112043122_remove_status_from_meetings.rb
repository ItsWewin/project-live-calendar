class RemoveStatusFromMeetings < ActiveRecord::Migration
  def change
    remove_column :meetings, :status, :string
  end
end
