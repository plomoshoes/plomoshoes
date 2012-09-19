class Shoe < ActiveRecord::Base
  attr_accessible :detail, :name, :image, :delete_image
  attr_accessor :delete_image
  before_validation { self.image.clear if self.delete_image == '1' }
  
  validates_presence_of :name
  validates_attachment_size :image, :less_than => 1.megabyte, :message => "Imagem deve ser menor que 1 megabyte"
  validates_attachment_content_type :image,
    :content_type => ['image/pjpeg', 'image/jpg', 'image/jpeg', 'image/gif', 'image/png', 'image/x-png'],
                     :message => "Imagem dever ser jpeg, gif ou png"
      
  has_attached_file :image, :styles => { :large => ["500x500", :png], :medium => ["230x230", :png] }
end
