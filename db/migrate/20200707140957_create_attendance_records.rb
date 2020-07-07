class CreateAttendanceRecords < ActiveRecord::Migration[5.2]
  def change
    create_table :attendance_records do |t|

    	t.datetime :begin_at, null: false
    	t.datetime :finish_at, null: false

      t.timestamps
    end
  end
end
