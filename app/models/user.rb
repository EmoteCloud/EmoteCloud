class User < ActiveRecord::Base
  has_many :votes, :inverse_of => :user, :dependent => :destroy
  has_many :emotes, :inverse_of => :submitter
  has_many :deviations, :inverse_of => :artist
end
