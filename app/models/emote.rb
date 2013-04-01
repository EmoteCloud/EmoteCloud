class Emote < ActiveRecord::Base
  belongs_to :deviation
  belongs_to :submitter, :class_name => 'User'
end
