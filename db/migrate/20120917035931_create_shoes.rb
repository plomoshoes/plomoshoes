class CreateShoes < ActiveRecord::Migration
  def change
    create_table :shoes do |t|
      t.string :name, :null => false
      t.text :detail
      t.string :image_file_name
      t.string :image_content_type
      t.integer :image_file_size
      t.datetime :image_updated_at

      t.timestamps
    end
  end
end
