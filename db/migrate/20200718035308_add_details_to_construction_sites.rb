class AddDetailsToConstructionSites < ActiveRecord::Migration[5.2]
  def change
    add_column :construction_sites, :foremen, :string
    add_column :construction_sites, :process, :integer
  end
end