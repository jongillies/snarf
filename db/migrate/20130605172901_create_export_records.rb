class CreateExportRecords < ActiveRecord::Migration
  def change
    create_table :export_records do |t|
      t.integer :data_source_id, :null => false
      t.string :primary_key, :null => false
      t.string :checksum, :null => false

      t.timestamps
    end
  end
end
