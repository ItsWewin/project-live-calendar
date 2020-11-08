class CreateArrangements < ActiveRecord::Migration
  def change
    create_table :arrangements do |t|
      t.datetime :start_time
      t.datetime :end_time
      t.boolean :published

      t.timestamps null: false
    end
  end
end
