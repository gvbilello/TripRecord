class CreateTrips < ActiveRecord::Migration[5.0]
  def change
    create_table :trips do |t|
    	t.string :name, null: false
    	t.string :description
    	t.date :start_date
    	t.date :end_date
    	t.references :user

      t.timestamps
    end
  end
end
