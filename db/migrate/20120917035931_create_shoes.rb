class CreateShoes < ActiveRecord::Migration
  def change
    create_table :shoes do |t|
      t.string :name, :null => false
      t.text :detail
      t.string :path
      t.string :image_file_name
      t.string :image_content_type
      t.integer :image_file_size
      t.datetime :image_updated_at
      t.boolean :active
      t.references :collection

      t.timestamps
    end
    add_index :shoes, :collection_id
  end
end
