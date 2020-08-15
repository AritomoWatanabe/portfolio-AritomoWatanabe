class AddDetailsToDailyReports < ActiveRecord::Migration[5.2]
  def change
    add_column :daily_reports, :welder, :integer #ガス工
    add_column :daily_reports, :etcetera_people, :string #その他の人工
  end
end
