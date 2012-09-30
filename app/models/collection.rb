class Collection < ActiveRecord::Base
  has_many :shoes
  
  attr_accessible :active, :name, :path, :current, :month, :year
  
  validates_presence_of :name
  
  default_scope where(:active => true).order('year desc, month desc')
  
  def self.current
    where(:current => true).first
  end
end
