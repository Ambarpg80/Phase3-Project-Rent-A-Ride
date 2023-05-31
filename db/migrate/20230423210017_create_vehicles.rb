class CreateVehicles < ActiveRecord::Migration[6.1]
  def change

    create_table :vehicles do |t|
      t.string :vin
      t.string :car_type      
      t.string :make_and_model   
      t.string :license_plate    
    end

  end
end
