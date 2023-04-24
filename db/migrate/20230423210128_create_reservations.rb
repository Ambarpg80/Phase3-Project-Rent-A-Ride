class CreateReservations < ActiveRecord::Migration[6.1]
  def change
    create_table :reservations do |t|
      t.string :full_name 
      t.boolean :driving_license    #(: false :null)
      t.string :payment_method #(cash/card)
      t.integer :vehicle_id     #(: false :null)
      t.timestamps
    end
    
  end
end
