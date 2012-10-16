class Collection < ActiveRecord::Base
  has_many :shoes
  
  attr_accessible :active, :name, :path, :current, :month, :year
  
  validates_presence_of :name
  
  default_scope order('year desc, month desc')
  
  scope :active, where(:active => true)
  
  def self.current
    where(:current => true).first
  end
end
