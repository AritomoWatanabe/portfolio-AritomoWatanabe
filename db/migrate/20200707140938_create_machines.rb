class CreateMachines < ActiveRecord::Migration[5.2]
  def change
    create_table :machines do |t|

    	t.string :name, null: false
    	t.boolean :need_repair, default: false, null: false

      t.timestamps
    end
  end
end
