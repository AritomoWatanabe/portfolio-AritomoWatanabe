class ChangeProcessOfConstructinSites < ActiveRecord::Migration[5.2]
  def up
    change_column :construction_sites, :process, :integer, default: 0
  end

  def down
    change_column :construction_sites, :process, :integer
  end
end
