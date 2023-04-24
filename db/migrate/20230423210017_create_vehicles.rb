class CreateVehicles < ActiveRecord::Migration[6.1]
  def change

    create_table :vehicles do |t|
      t.string :vin
      t.string :car_type      #(sedan, SUV, luxury, minivan, van)
      t.string :make_and_model   #(Honda Odyssey, Toyota Camry, Ford Transit, Chevy Equinox, BMW i-9)
      t.string :license_plate    #($100 , $250, $350, $450, $300)
      t.boolean :reserved
    end

  end
end
