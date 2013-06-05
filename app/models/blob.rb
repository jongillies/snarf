class Blob < ActiveRecord::Base
  attr_accessible :checksum

  validates :checksum, :presence => true, :uniqueness => true

end
