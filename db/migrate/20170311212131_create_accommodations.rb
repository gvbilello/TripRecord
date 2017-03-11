class CreateAccommodations < ActiveRecord::Migration[5.0]
  def change
    create_table :accommodations do |t|
    	t.string :name
    	t.string :location
    	t.string :description
    	t.datetime :checkin_datetime
    	t.datetime :checkout_datetime
    	t.decimal :cost, scale: 2

      t.timestamps
    end
  end
end
