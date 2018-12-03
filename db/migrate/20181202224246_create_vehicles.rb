class CreateVehicles < ActiveRecord::Migration[5.2]
  def change
    create_table :vehicles do |t|
      t.string :vehicle_id, null: false, uniqueness: true
      t.timestamps
    end
  end
end
