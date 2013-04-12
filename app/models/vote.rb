class Vote < ActiveRecord::Base
  belongs_to :user, :inverse_of => :votes
  belongs_to :emote, :inverse_of => :votes
end
