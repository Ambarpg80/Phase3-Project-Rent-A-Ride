class CreateReservations < ActiveRecord::Migration[6.1]
  def change
    create_table :reservations do |t|
      t.belongs_to :vehicle, foreign_key: true 
      t.string :full_name 
      t.string :driving_license    
      t.string :payment_method 
      t.timestamps
    end
    
  end
end
