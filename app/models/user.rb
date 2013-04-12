class User < ActiveRecord::Base
  has_many :votes, :inverse_of => :user, :dependent => :destroy
  has_many :emotes, :inverse_of => :submitter
  has_many :deviations, :inverse_of => :artist
  has_many :voting_tokens, :inverse_of => :user

  validates :username, :presence => true, :uniqueness => true
end
