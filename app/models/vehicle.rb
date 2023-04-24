class Vehicle < ActiveRecord::Base 
    
        has_many :drivers, through: :reservations
   
end