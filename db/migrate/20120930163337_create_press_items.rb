class CreatePressItems < ActiveRecord::Migration
  def change
    create_table :press_items do |t|
      t.string :name
      t.text :description
      t.integer :ordering, :default => 0
      t.string :image_file_name
      t.string :image_content_type
      t.integer :image_file_size
      t.datetime :image_updated_at

      t.timestamps
    end
  end
end
