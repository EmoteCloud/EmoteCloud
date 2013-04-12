class Client < ActiveRecord::Base
  belongs_to :author, :class_name => 'User' # no inverse
  has_one :logo, :class_name => 'Deviation' # no inverse

  validates :name, :presence => true, :uniqueness => true
  
  def logo_url
    self.logo.image_url
  end
end
