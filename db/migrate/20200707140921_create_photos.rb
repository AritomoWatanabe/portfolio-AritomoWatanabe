class CreatePhotos < ActiveRecord::Migration[5.2]
  def change
    create_table :photos do |t|

    	t.string :explanation, null: false

      t.timestamps
    end
  end
end
