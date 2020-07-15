class AddStartTimeToDailyReports < ActiveRecord::Migration[5.2]
  def change
    add_column :daily_reports, :start_time, :datetime
  end
end
