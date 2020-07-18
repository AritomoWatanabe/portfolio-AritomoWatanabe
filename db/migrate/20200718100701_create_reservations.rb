class CreateReservations < ActiveRecord::Migration[5.2]
  def change
    create_table :reservations do |t|

    	t.string :content, null: false
    	t.datetime :start_time, null: false
    	t.datetime :finish_at, null: false

    	t.timestamps
    end
  end
end
