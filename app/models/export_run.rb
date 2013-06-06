class ExportRun < ActiveRecord::Base
  attr_accessible :data_source_id, :duration, :finished_at, :record_count, :started_at

  belongs_to :data_source
  has_many :export_records

  before_save :update_duration

  validates :data_source_id, :presence => true
  validates :started_at, :presence => true
  validates :finished_at, :presence => true
  validates :record_count, :presence => true

  private

  def update_duration
    if !duration && finished_at && started_at
      self.duration = finished_at - started_at
    end
  end

end
