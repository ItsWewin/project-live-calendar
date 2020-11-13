class AddStatusToMeetings < ActiveRecord::Migration
  def change
    add_column :meetings, :partner_status, :string
    add_column :meetings, :pioneer_status, :string
  end
end
