class Emote < ActiveRecord::Base
  belongs_to :deviation, :inverse_of => :emotes
  belongs_to :submitter, :class_name => 'User', :inverse_of => :deviations
  has_many :votes, :inverse_of => :emotes
end
