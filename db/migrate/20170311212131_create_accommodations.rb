class CreateAccommodations < ActiveRecord::Migration[5.0]
  def change
    create_table :accommodations do |t|
    	t.references :trip, null: false
      t.string :name
    	t.string :location
    	t.string :description
    	t.date :checkin_date
    	t.date :checkout_date
    	t.decimal :cost

      t.timestamps
    end
  end
end
