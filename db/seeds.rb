puts "🌱 Seeding reservations..."

# Seed your database here

10.times do
    Vehicle.create(
      vin: Faker::Vehicle.vin,
      car_type: Faker::Vehicle.car_type,
      make_and_model: Faker::Vehicle.make_and_model,
      license_plate: Faker::Vehicle.license_plate,
      # reserved: false
    )
  end

  4.times do
    Reservation.create(
        full_name: Faker::Name.name ,
        driving_license: Faker::DrivingLicence.usa_driving_licence, 
        payment_method: Faker::Finance.credit_card,
        vehicle_id: Reservation.add_vid
      ) 
    end
    
  Vehicle.all.each{|car|
      car.update(reserved: Reservation.exists?(vehicle_id: car.id))
    }

     
 
  
  
 

puts "✅ Done seeding!"
