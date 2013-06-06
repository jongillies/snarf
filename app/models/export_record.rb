class ExportRecord < ActiveRecord::Base
  attr_accessible :checksum, :data_source_id, :primary_key

  validates_presence_of :checksum, :data_source_id, :primary_key

  belongs_to :data_source
  belongs_to :export_run

  belongs_to :blob, foreign_key: :checksum

end
