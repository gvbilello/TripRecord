class CreateRentalCars < ActiveRecord::Migration[5.0]
  def change
    create_table :rental_cars do |t|
    	t.references :trip, null: false
    	t.string :rental_company
    	t.string :pickup_location
    	t.string :dropoff_location
    	t.datetime :pickup_datetime
    	t.datetime :dropoff_datetime
    	t.string :make
    	t.string :model
    	t.string :year
    	t.decimal :cost

      t.timestamps
    end
  end
end
