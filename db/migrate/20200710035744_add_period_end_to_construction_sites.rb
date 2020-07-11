class AddPeriodEndToConstructionSites < ActiveRecord::Migration[5.2]
  def change
    add_column :construction_sites, :period_end, :datetime
  end
end
