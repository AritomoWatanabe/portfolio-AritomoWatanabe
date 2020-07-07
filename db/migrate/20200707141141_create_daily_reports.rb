class CreateDailyReports < ActiveRecord::Migration[5.2]
  def change
    create_table :daily_reports do |t|

    	t.datetime :date, null: false
    	t.string :content, null: false
    	t.string :etcetera
    	t.string :company_people, null: false
    	t.integer :care_people #手元工
    	t.integer :scaffold_people #鳶職工
    	t.integer :interior_people #内装工
    	t.integer :watchman #警備員
    	t.integer :garbage_collection_car #ゴミ4t車
    	t.integer :big_garbage_collection_car #ゴミ大型車
    	t.integer :concrete_car #ガラ8t車
    	t.integer :big_concrete_car #ガラ大型車
    	t.integer :soil_car #埋め戻し土大型車

      t.timestamps
    end
  end
end
