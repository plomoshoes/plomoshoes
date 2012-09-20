class Collection < ActiveRecord::Base
  has_many :shoes
  
  attr_accessible :active, :name, :path, :current
  
  default_scope where(:active => true)
  
  def self.current
    where(:current => true).first
  end
end
