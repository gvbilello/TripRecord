class CreateFlights < ActiveRecord::Migration[5.0]
  def change
    create_table :flights do |t|
    	t.references :trip, null: false
    	t.datetime :takeoff_datetime
    	t.datetime :landing_datetime
    	t.string :airline
    	t.string :flight_number
    	t.string :takeoff_airport
    	t.string :landing_airport
    	t.decimal :cost

      t.timestamps
    end
  end
end
