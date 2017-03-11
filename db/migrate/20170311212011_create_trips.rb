class CreateTrips < ActiveRecord::Migration[5.0]
  def change
    create_table :trips do |t|
    	t.string :name, null: false
    	t.string :description
    	t.references :user

      t.timestamps
    end
  end
end
