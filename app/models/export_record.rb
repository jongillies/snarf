class ExportRecord < ActiveRecord::Base
  attr_accessible :checksum, :data_source_id, :primary_key

  validates_presence_of :checksum, :data_source_id, :primary_key

  belongs_to :data_source

end
