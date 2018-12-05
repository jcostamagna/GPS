class CreateWaypoints < ActiveRecord::Migration[5.2]
  def change
    create_table :waypoints do |t|
      t.decimal :latitude, null: false
      t.decimal :longitude, null: false
      t.datetime :time, null: false
      t.references :vehicle, index: true, foreign_key: true
      t.index [:vehicle_id, :time], unique: true
      t.timestamps
    end
  end
end
