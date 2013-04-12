class Deviation < ActiveRecord::Base
  belongs_to :artist, :class_name => 'User', :inverse_of => :deviations
  has_many :emotes, :inverse_of => :deviation, :dependent => :destroy

  validates :artist, :presence => true
  validates :deviation_id, :presence => true, :uniqueness => true
end
