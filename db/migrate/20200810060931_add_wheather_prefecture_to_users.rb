class AddWheatherPrefectureToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :wheather_prefecture, :string, default: '東京都'
  end
end
