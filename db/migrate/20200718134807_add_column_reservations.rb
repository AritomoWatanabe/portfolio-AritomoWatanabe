class AddColumnReservations < ActiveRecord::Migration[5.2]
  def change
  	 add_column :reservations, :construction_site_id, :integer

  	 add_column :reservations, :car_id, :integer

  end
end
