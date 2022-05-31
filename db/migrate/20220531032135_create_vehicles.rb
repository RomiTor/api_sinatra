class CreateVehicles < ActiveRecord::Migration[7.0]
  def change
    create_table :vehicles do |t|
      t.references :user
      t.references :brand
      t.string :plate
      t.integer :price
    end
  end
end
