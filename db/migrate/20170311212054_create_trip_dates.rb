class CreateTripDates < ActiveRecord::Migration[5.0]
  def change
    create_table :trip_dates do |t|
    	t.string :date_title
    	t.references :trip, null: false
    	t.references :accommodation
    	t.date :date, null: false

      t.timestamps
    end
  end
end
