puts "🌱 Seeding reservations..."

# Seed your database here
50.times do
    # create a game with random data
    Vehicle.create(
      vin: Faker::Vehicle.vin,
      car_type: Faker::Vehicle.car_type,
      make_and_model: Faker::Vehicle.make_and_model,
      license_plate: Faker::Vehicle.license_plate
    )
  end

  22.times do
    Reservation.create(
        full_name: Faker::Name.name ,
        driving_license: Faker::DrivingLicence.usa_driving_licence, 
        payment_method: Faker::Finance.credit_card || "cash",
        vehicle_id: Reservation.add_vid
    )
    

  end

puts "✅ Done seeding!"
