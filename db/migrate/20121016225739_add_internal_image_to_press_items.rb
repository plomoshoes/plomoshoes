class AddInternalImageToPressItems < ActiveRecord::Migration
  def change
    add_column :press_items, :internal_image_file_name, :string
    add_column :press_items, :internal_image_content_type, :string
    add_column :press_items, :internal_image_file_size, :integer
    add_column :press_items, :internal_image_updated_at, :datetime
  end
end
