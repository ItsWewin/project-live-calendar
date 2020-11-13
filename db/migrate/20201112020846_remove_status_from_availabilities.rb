class RemoveStatusFromAvailabilities < ActiveRecord::Migration
  def change
    remove_column :availabilities, :status, :string
  end
end
