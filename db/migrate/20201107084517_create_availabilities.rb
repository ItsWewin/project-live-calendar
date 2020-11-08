class CreateAvailabilities < ActiveRecord::Migration
  def change
    create_table :availabilities do |t|
      t.bigint :partner_id
      t.bigint :arrangement_id
      t.string :status

      t.timestamps null: false
    end
  end
end
