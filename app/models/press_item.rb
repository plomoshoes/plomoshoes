class PressItem < ActiveRecord::Base
  attr_accessible :description, :ordering, :name, :image, :delete_image, :internal_image, :delete_internal_image
  attr_accessor :delete_image, :delete_internal_image
  before_validation {
    self.image.clear if self.delete_image == '1'
    self.internal_image.clear if self.delete_internal_image == '1'
  }

  validates_presence_of :name
  validates_attachment_size [:internal_image, :image], :less_than => 2.megabyte, :message => "Imagem deve ser menor que 2 megabytes"
  validates_attachment_content_type [:internal_image, :image],
    :content_type => ['image/pjpeg', 'image/jpg', 'image/jpeg', 'image/gif', 'image/png', 'image/x-png'],
                     :message => "Imagem dever ser jpeg, gif ou png"
      
  has_attached_file :image, :styles => { :original => ["150x180", :png] }
  has_attached_file :internal_image
  
  default_scope order('ordering desc')
end
