YAML::load_file('db/seeds/data_sources.yml').each do |data_source|
  ds = DataSource.find_or_create_by_name(data_source, :without_protection => true)
  puts "DataSource> #{ds.name}"
end

YAML::load_file('db/seeds/export_records.yml').each do |export_record|
  er = ExportRecord.find_or_create_by_id(export_record, :without_protection => true)
  puts "ExportRecord> #{er.created_at}"
end

YAML::load_file('db/seeds/blobs.yml').each do |blob|
  b = Blob.find_or_create_by_id(blob, :without_protection => true)
  puts "Blob> #{b.created_at}"
end

YAML::load_file('db/seeds/export_runs.yml').each do |export_run|
  er = ExportRun.find_or_create_by_id(export_run, :without_protection => true)
  puts "ExportRun> #{er.created_at}"
end