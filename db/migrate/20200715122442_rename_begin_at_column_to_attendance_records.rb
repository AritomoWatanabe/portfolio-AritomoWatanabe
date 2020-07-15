class RenameBeginAtColumnToAttendanceRecords < ActiveRecord::Migration[5.2]
  def change
  	rename_column :attendance_records, :begin_at, :start_time
  end
end
