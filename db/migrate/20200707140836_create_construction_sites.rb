class CreateConstructionSites < ActiveRecord::Migration[5.2]
  def change
    create_table :construction_sites do |t|


    	t.string :name, null: false
    	t.string :address, null: false
    	t.string :prime_contractor, null: false
    	t.datetime :period, null: false
    	t.string :caution, null: false

      t.timestamps
    end
  end
end
