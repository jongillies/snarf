class CreateExportRuns < ActiveRecord::Migration
  def change
    create_table :export_runs do |t|
      t.integer :data_source_id
      t.datetime :started_at
      t.datetime :finished_at
      t.integer :record_count
      t.integer :duration

      t.timestamps
    end
  end
end
