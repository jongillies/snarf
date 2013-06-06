class AddRecordSize < ActiveRecord::Migration
  def up
    add_column :export_records, :record_size, :integer
  end

  def down
  end
end
