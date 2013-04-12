class Deviation < ActiveRecord::Base
  belongs_to :artist, :class_name => 'User', :inverse_of => :deviations
  has_many :emotes, :inverse_of => :deviation, :dependent => :destroy
end
