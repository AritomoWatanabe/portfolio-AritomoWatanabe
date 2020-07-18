class CreateCars < ActiveRecord::Migration[5.2]
  def change
    create_table :cars do |t|

    	t.string :name, null: false
    	t.boolean :still_run, default: true, null: false

      	t.timestamps
    end
  end
end
