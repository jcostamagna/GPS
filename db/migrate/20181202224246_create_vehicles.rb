class CreateVehicles < ActiveRecord::Migration[5.2]
  def change
    create_table :vehicles do |t|
      t.string :vehicle_id, :primary_key
      t.timestamps
    end
  end
end
