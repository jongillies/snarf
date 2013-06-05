class Blob < ActiveRecord::Base
  attr_accessible :checksum, :data

  validates :checksum, :presence => true, :uniqueness => true

end
