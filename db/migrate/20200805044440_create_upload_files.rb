class CreateUploadFiles < ActiveRecord::Migration[5.2]
  def change
    create_table :upload_files do |t|
      t.integer :construction_site_id, null: false
      t.string :name, null: false
      t.string :explanation, null: false
      t.string :file, null: false

      t.timestamps
    end
  end
end
