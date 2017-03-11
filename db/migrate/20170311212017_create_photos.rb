class CreatePhotos < ActiveRecord::Migration[5.0]
  def change
    create_table :photos do |t|
    	t.string :photo_link, null: false
    	t.string :title
    	t.string :description

      t.timestamps
    end
  end
end
