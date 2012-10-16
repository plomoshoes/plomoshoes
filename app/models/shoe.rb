class Shoe < ActiveRecord::Base
  belongs_to :collection
  
  attr_accessible :detail, :name, :path, :price, :image, :delete_image, :ordering, :active, :collection_id, :sold_out
  attr_accessor :delete_image
  before_validation { self.image.clear if self.delete_image == '1' }
  
  validates_presence_of :name
  validates_attachment_size :image, :less_than => 2.megabyte, :message => "Imagem deve ser menor que 2 megabytes"
  validates_attachment_content_type :image,
    :content_type => ['image/pjpeg', 'image/jpg', 'image/jpeg', 'image/gif', 'image/png', 'image/x-png'],
                     :message => "Imagem dever ser jpeg, gif ou png"
      
  has_attached_file :image, :styles => { :medium => ["230x230!", :png], :large => ["620x620>", :png] }
  
  default_scope order('ordering desc, name asc')
  
  def self.by_collection(collection)
    where(:collection_id => collection.id, :active => true)
  end
  
  delegate :path, :to => :collection, :prefix => true
end
