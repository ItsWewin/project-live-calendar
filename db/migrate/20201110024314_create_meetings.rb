class CreateMeetings < ActiveRecord::Migration
  def change
    create_table :meetings do |t|
      t.bigint :availability_id
      t.bigint :pioneer_id
      t.string :status
    end
  end
end
