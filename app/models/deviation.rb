class Deviation < ActiveRecord::Base
  belongs_to :artist, :class_name => 'User'
  has_many :emotes, :inverse_of => :deviation, :dependent => :destroy
end
