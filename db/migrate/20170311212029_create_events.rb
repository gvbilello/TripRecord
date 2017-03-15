class CreateEvents < ActiveRecord::Migration[5.0]
  def change
    create_table :events do |t|
    	t.string :name
    	t.string :location
    	t.string :type
    	t.string :description
    	t.time :time
      t.date :date
    	t.decimal :cost
    	t.references :photo
    	t.references :trip, null: false

      t.timestamps
    end
  end
end
