class VotingToken < ActiveRecord::Base
  belongs_to :user, :inverse_of => :voting_tokens
  belongs_to :client # no inverse

  before_create :generate_access_token

  private
  def generate_access_token
    begin
      self.access_token = SecureRandom.hex
    end while self.class.exists?(:access_token => access_token)
  end
end
