class CreateEvents < ActiveRecord::Migration[5.0]
  def change
    create_table :events do |t|
    	t.string :name
    	t.string :location
    	t.string :type
    	t.string :description
    	t.time :time
    	t.decimal :cost
    	t.references :photo
    	t.references :tripdate

      t.timestamps
    end
  end
end
