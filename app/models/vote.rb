class Vote < ActiveRecord::Base
  belongs_to :user, :inverse_of => :votes
  belongs_to :emote, :inverse_of => :votes

  validates :user, :presence => true
  validates :emote, :presence => true
  validates :vote, :presence => true, :inclusion => { :in => [1, -1] }
end
