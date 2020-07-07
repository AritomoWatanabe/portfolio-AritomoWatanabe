class CreatePhotos < ActiveRecord::Migration[5.2]
  def change
    create_table :photos do |t|

    	t.integer :construction_site_id, null: false
    	t.string :image_id, null: false
    	t.string :explanation, null: false

      t.timestamps
    end
  end
end
