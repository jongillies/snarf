class DataSource < ActiveRecord::Base
  attr_accessible :name

  validates :name, :presence => true, :uniqueness => true
  has_many :export_records, :dependent => :destroy

end