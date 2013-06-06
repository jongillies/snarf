class AddForeignKeys < ActiveRecord::Migration
  def up
    add_column :export_records, :export_run_id, :integer
  end

  def down
  end
end
